����   2 � %kotlin/jvm/internal/CollectionToArray  java/lang/Object  Lkotlin/jvm/JvmName; name CollectionToArray EMPTY [Ljava/lang/Object; MAX_SIZE I��� toArray +(Ljava/util/Collection;)[Ljava/lang/Object; #Lorg/jetbrains/annotations/NotNull; 
collection  kotlin/jvm/internal/Intrinsics  checkParameterIsNotNull '(Ljava/lang/Object;Ljava/lang/String;)V  
   java/util/Collection  size ()I      		   iterator ()Ljava/util/Iterator;   !  " java/util/Iterator $ hasNext ()Z & ' % ( next ()Ljava/lang/Object; * + % , java/lang/OutOfMemoryError . <init> ()V 0 1
 / 2 java/lang/Throwable 4 java/util/Arrays 6 copyOf )([Ljava/lang/Object;I)[Ljava/lang/Object; 8 9
 7 : Arrays.copyOf(result, newSize) < checkExpressionValueIsNotNull > 
  ? Arrays.copyOf(result, size) A $i$a$1$toArrayImpl $i$a$2$toArrayImpl result $i$a$3$toArrayImpl 
newSize$iv i$iv 	result$iv iter$iv Ljava/util/Iterator; size$iv $i$f$toArrayImpl Ljava/util/Collection; 	 >(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object; $Lorg/jetbrains/annotations/Nullable; java/lang/NullPointerException R
 S 2 getClass ()Ljava/lang/Class; U V
  W java/lang/Class Y getComponentType [ V
 Z \ java/lang/reflect/Array ^ newInstance &(Ljava/lang/Class;I)Ljava/lang/Object; ` a
 _ b kotlin/TypeCastException d >null cannot be cast to non-null type kotlin.Array<kotlin.Any?> f (Ljava/lang/String;)V 0 h
 e i $i$a$4$toArrayImpl $i$a$5$toArrayImpl $i$a$6$toArrayImpl a toArrayImpl �(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object; kotlin/jvm/functions/Function0 q invoke s + r t java/lang/Integer v valueOf (I)Ljava/lang/Integer; x y
 w z kotlin/jvm/functions/Function1 | &(Ljava/lang/Object;)Ljava/lang/Object; s ~ }  kotlin/jvm/functions/Function2 � 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; s � � � newSize i iter empty  Lkotlin/jvm/functions/Function0; alloc  Lkotlin/jvm/functions/Function1; trim  Lkotlin/jvm/functions/Function2; <clinit> Lkotlin/Metadata; mv       bv        k d1M��2
��

��






��

��

#
002
0H¢	
5
002
0200H¢	~
002
02
00020
0002($
000
000H¢"��
00X¢
"0XT¢
��¨ d2   collectionToArray Lkotlin/Function0; Lkotlin/Function1; Lkotlin/Function2; kotlin-stdlib $i$f$emptyArray CollectionToArray.kt ConstantValue Code LocalVariableTable LineNumberTable StackMapTable 	Signature .(Ljava/util/Collection<*>;)[Ljava/lang/Object; RuntimeInvisibleAnnotations $RuntimeInvisibleParameterAnnotations A(Ljava/util/Collection<*>;[Ljava/lang/Object;)[Ljava/lang/Object;	(Ljava/util/Collection<*>;Lkotlin/jvm/functions/Function0<[Ljava/lang/Object;>;Lkotlin/jvm/functions/Function1<-Ljava/lang/Integer;[Ljava/lang/Object;>;Lkotlin/jvm/functions/Function2<-[Ljava/lang/Object;-Ljava/lang/Integer;[Ljava/lang/Object;>;)[Ljava/lang/Object; 
SourceFile SourceDebugExtension RuntimeVisibleAnnotations 1        	    
   �          �  �  
   �*�  *�  <� 	� � �*� # M,� ) � 	� � �>� N6-�,� - S-�� G,� ) � -� ]h`|6� � � /Y� 3� 5�6-� ;Y=� @N� #,� ) � -6:� ;YB� @� ����    �   �    C   (  C   0     0  D   �  E 	  �     �  F   c * G   8 { H   5 ~ I 	   � J K   � L    � M  	   �  N   �   j         S  T    U  V (  . W 0  5 X 8 Z 8 [ E \ L ] Y a c b j c | d � f � h �  � i � Z �  �   + 	� �  %� 	 O � "� �     O �    � �       s     �          P  �  �    *� +� � SY� T� 5� *�  =� +�� +S+� �*� # :� ) � +�� +S+� �>+�� +� +� X� ]� cY� � eYg� j�� O:>�� - S�� H� ) � � lh`|6� � � /Y� 3� 5�6� ;Y=� @:� 3� ) � )6:+� +S+� � ;YB� @� ��v�    �   �  ! 
 k   @ 
 k   O &    O & l   �  E 	  �     �  m  	 � * G   y � H   w � I 	  6 � J K   � L    � M  
    N     n 	  �   � "           j  k ! " * # . l 6 m @ " I # M n O & O ' w o y q y r � s � t � x � y � z � { � } �  � * � + � , � .  *  . � q �   ~ � �   %�    O %  X B O�   O#�    O % O  �    O %  O  �  OL O� �    O  O �    � �       s     �         Q    o p  �  �  
   �*�  6� +� u � O�*� # :� ) � +� u � O�,� {� � � O:6�� - S�� I� ) � �h`|6		� � � /Y� 3� 5�6		� ;Y=� @:� � ) � -� {� � � O����    �   f 
 t , �  	 F { �   C ~ E 	   � � K   �      �  N     � � �    � � �    � � �    � M   �   J    9  :  ;  < 3 = C > F @ F A U B ] C j G t H { I � J � L � N � O � @ �    �  �  %�  O#� "�  �    �  � 1  �   ;     	 � � �    �       �    �         �  �  �    � �  GSMAP
Collecti