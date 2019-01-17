package  com.example.patryk.notificationvisibility

import android.app.Notification.*
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.os.Build
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v4.app.NotificationCompat
import android.support.v4.app.NotificationManagerCompat
import kotlinx.android.synthetic.main.activity_main.*
import org.jetbrains.anko.doAsync
import org.jetbrains.anko.uiThread


class MainActivity : AppCompatActivity() {


    val CHANNEL_ID="chanel"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        createNotificationChannel()
        button_publicNotification.setOnClickListener {createPublicNotification()        }
        button_private.setOnClickListener {createPrivateNotification()}
        button_secret.setOnClickListener { createSecretNotification() }
        button_custom.setOnClickListener {createCustomNotification()     }
    }

    private fun createPublicNotification(){
        var mPublicBuilder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_launcher_background)
            .setContentTitle("PublicTitle")
            .setContentText("PublicContent")
            .setVisibility(VISIBILITY_PUBLIC)
            .build()
        var x=NotificationManagerCompat.from(this)
        doAsync {
            Thread.sleep(5_000)
            uiThread {
                x.notify(1, mPublicBuilder)
            }
        }
    }

    private fun createPrivateNotification()
    {
        var mPrivateBuilder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_launcher_background)
            .setContentTitle("PrivateTitle")
            .setContentText("PrivateContent")
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setCategory(NotificationCompat.CATEGORY_MESSAGE)
            .setVisibility(VISIBILITY_PRIVATE).build()
        var x= NotificationManagerCompat.from(this)

        doAsync {
            Thread.sleep(5_000)
            uiThread {
                x.notify(2, mPrivateBuilder)
            }
        }
    }

    private fun createSecretNotification(){
        var mSecretBuilder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_launcher_background)
            .setContentTitle("SecretTitle")
            .setContentText("SecretContent")
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setCategory(NotificationCompat.CATEGORY_MESSAGE)
            .setVisibility(VISIBILITY_SECRET).build()
        var x= NotificationManagerCompat.from(this)
        doAsync {
            Thread.sleep(5_000)
            uiThread {
                x.notify(3, mSecretBuilder)
            }
        }
    }

    private fun createCustomNotification()
    {
        var mLockCustomBuilder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_launcher_background)
            .setContentTitle("Lock Custom Title")
            .setContentText("Lock custom Content")
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setCategory(NotificationCompat.CATEGORY_MESSAGE)
            .setVisibility(VISIBILITY_PUBLIC).build()

        var mCustomBuilder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_launcher_background)
            .setContentTitle("CustomTitle")
            .setContentText("customContent")
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setCategory(NotificationCompat.CATEGORY_MESSAGE)
            .setPublicVersion(mLockCustomBuilder)
            .setVisibility(VISIBILITY_PRIVATE).build()
        var x=NotificationManagerCompat.from(this)

        doAsync {
            Thread.sleep(5_000)
            uiThread {
                x.notify(4, mCustomBuilder)

            }
        }
    }

    private fun createNotificationChannel() {
        // Create the NotificationChannel, but only on API 26+ because
        // the NotificationChannel class is new and not in the support library
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val name = getString(R.string.channel_name)
            val descriptionText = getString(R.string.channel_description)
            val importance = NotificationManager.IMPORTANCE_DEFAULT
            val channel = NotificationChannel(CHANNEL_ID, name, importance)
            channel.description=descriptionText
            // Register the channel with the system
            val notificationManager: NotificationManager =
                getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }
}
