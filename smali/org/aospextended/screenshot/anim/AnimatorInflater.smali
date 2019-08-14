.class public Lorg/aospextended/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/aospextended/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    .line 60
    sget-object v0, Lorg/aospextended/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/aospextended/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/aospextended/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aospextended/screenshot/anim/TargetAnimator;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lorg/aospextended/screenshot/anim/TargetAnimator;

    move-object/from16 v0, p0

    .line 348
    move-object/from16 v1, p2

    sget-object v2, Lorg/aospextended/screenshot/R$styleable;->Target:[I

    .line 349
    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 351
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 353
    .local v4, "target":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 354
    .local v6, "viewID":I
    if-lez v6, :cond_0

    .line 355
    invoke-virtual/range {p2 .. p2}, Lorg/aospextended/screenshot/anim/TargetAnimator;->getLoader()Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 359
    :cond_0
    if-eqz v4, :cond_2

    .line 360
    new-instance v7, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v7}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 361
    .local v7, "propAnimators":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v8, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v8}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 362
    .local v8, "propStarts":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v9, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v9}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 363
    .local v9, "propEnds":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 364
    .local v10, "N":I
    move v11, v5

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 365
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    .line 366
    .local v12, "attr":I
    packed-switch v12, :pswitch_data_0

    .end local v12    # "attr":I
    goto :goto_2

    .line 382
    .restart local v12    # "attr":I
    :pswitch_0
    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 383
    .local v13, "resID":I
    invoke-static {v0, v13}, Lorg/aospextended/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    .line 384
    .local v14, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v15, Lorg/aospextended/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v7, v5, v14}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    goto :goto_1

    .line 374
    .end local v5    # "name":Ljava/lang/String;
    .end local v13    # "resID":I
    .end local v14    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    const/16 v5, 0x8

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 376
    .local v5, "visibility":I
    const-string v13, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    nop

    .line 364
    .end local v5    # "visibility":I
    .end local v12    # "attr":I
    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 368
    .restart local v12    # "attr":I
    :pswitch_2
    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 370
    .local v13, "visibility":I
    const-string v14, "visibility"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    nop

    .line 364
    .end local v12    # "attr":I
    .end local v13    # "visibility":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 391
    .end local v11    # "i":I
    :cond_1
    invoke-virtual {v1, v4, v7}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 392
    invoke-virtual {v1, v4, v8}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 393
    invoke-virtual {v1, v4, v9}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 396
    .end local v7    # "propAnimators":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    .end local v8    # "propStarts":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    .end local v9    # "propEnds":Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    .end local v10    # "N":I
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 16
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 117
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v9, v1

    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, "depth":I
    .local v9, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_0
    move v10, v2

    .line 119
    .end local v2    # "depth":I
    .local v10, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v11, v1

    .local v11, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v10, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    move-object/from16 v1, p2

    goto/16 :goto_5

    .line 119
    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eq v11, v1, :cond_0

    .line 122
    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    .line 123
    nop

    .line 117
    move-object/from16 v1, p2

    goto/16 :goto_4

    .line 126
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "name":Ljava/lang/String;
    const-string v1, "objectAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-static {v6, v7}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    :goto_2
    move-object/from16 v1, p2

    goto :goto_3

    .line 130
    :cond_3
    const-string v1, "animator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v1, 0x0

    invoke-static {v6, v7, v1}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    .line 132
    :cond_4
    const-string v1, "set"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v13, v1

    .line 135
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v13, "anim":Landroid/animation/Animator;
    sget-object v0, Landroid/R$styleable;->AnimatorSet:[I

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 137
    .local v14, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 139
    .local v15, "ordering":I
    move-object v4, v13

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v5, v15

    invoke-static/range {v0 .. v5}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 140
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v14    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "ordering":I
    nop

    .line 150
    move-object/from16 v1, p2

    move-object v0, v13

    goto :goto_3

    .line 141
    .end local v13    # "anim":Landroid/animation/Animator;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_5
    const-string v1, "targetAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    move-object/from16 v1, p2

    invoke-static {v6, v7, v1}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Lorg/aospextended/screenshot/anim/TargetAnimator;

    move-result-object v0

    .line 150
    :goto_3
    if-eqz v8, :cond_7

    .line 151
    if-nez v9, :cond_6

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 154
    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v12    # "name":Ljava/lang/String;
    :cond_7
    goto :goto_4

    .line 143
    .restart local v12    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v1, p2

    const-string v2, "target"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    move-object v2, v0

    check-cast v2, Lorg/aospextended/screenshot/anim/TargetAnimator;

    invoke-static {v6, v7, v2}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aospextended/screenshot/anim/TargetAnimator;)V

    .line 145
    nop

    .line 117
    .end local v10    # "depth":I
    .end local v11    # "type":I
    .end local v12    # "name":Ljava/lang/String;
    .restart local v2    # "depth":I
    :goto_4
    move v2, v10

    goto/16 :goto_0

    .line 147
    .end local v2    # "depth":I
    .restart local v10    # "depth":I
    .restart local v11    # "type":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .end local v12    # "name":Ljava/lang/String;
    :goto_5
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    .line 158
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 159
    .local v2, "animsArray":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 160
    .local v3, "index":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 161
    .local v5, "a":Landroid/animation/Animator;
    add-int/lit8 v12, v3, 0x1

    .local v12, "index":I
    aput-object v5, v2, v3

    .line 162
    .end local v3    # "index":I
    .end local v5    # "a":Landroid/animation/Animator;
    nop

    .line 160
    move v3, v12

    goto :goto_6

    .line 163
    .end local v12    # "index":I
    .restart local v3    # "index":I
    :cond_a
    if-nez p5, :cond_b

    .line 164
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7

    .line 166
    :cond_b
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 170
    .end local v2    # "animsArray":[Landroid/animation/Animator;
    .end local v3    # "index":I
    :cond_c
    :goto_7
    return-object v0
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Lorg/aospextended/screenshot/anim/TargetAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "anim":Lorg/aospextended/screenshot/anim/TargetAnimator;
    if-eqz p1, :cond_0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/aospextended/screenshot/anim/TargetAnimator;

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 405
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/aospextended/screenshot/anim/TargetAnimator;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 407
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/aospextended/screenshot/anim/TargetAnimator;>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/aospextended/screenshot/anim/TargetAnimator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 420
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/aospextended/screenshot/anim/TargetAnimator;>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/aospextended/screenshot/anim/TargetAnimator;>;"
    :goto_0
    goto :goto_1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 416
    :catch_1
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 414
    :catch_2
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 412
    :catch_3
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 410
    :catch_4
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 408
    :catch_5
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 423
    :cond_0
    new-instance v1, Lorg/aospextended/screenshot/anim/TargetAnimator;

    invoke-direct {v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;-><init>()V

    move-object v0, v1

    .line 425
    :goto_1
    invoke-virtual {v0, p2}, Lorg/aospextended/screenshot/anim/TargetAnimator;->setLoader(Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)V

    .line 426
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 84
    invoke-static {p0, v0, p2}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_0
    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v2

    .line 85
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v1
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 203
    sget-object v1, Landroid/R$styleable;->Animator:[I

    .line 204
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 206
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/16 v4, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    .line 208
    .local v4, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-long v8, v8

    .line 210
    .local v8, "startDelay":J
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 213
    .local v10, "valueType":I
    if-nez p2, :cond_0

    .line 214
    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v11, v12

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 218
    .end local v11    # "anim":Landroid/animation/ValueAnimator;
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    move-object/from16 v11, p2

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .restart local v11    # "anim":Landroid/animation/ValueAnimator;
    :goto_0
    const/4 v12, 0x0

    .line 220
    .local v12, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v13, 0x5

    .line 221
    .local v13, "valueFromIndex":I
    const/4 v14, 0x6

    .line 223
    .local v14, "valueToIndex":I
    if-nez v10, :cond_1

    move v15, v3

    goto :goto_1

    :cond_1
    move v15, v7

    .line 225
    .local v15, "getFloats":Z
    :goto_1
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 226
    .local v3, "tvFrom":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    .line 227
    .local v16, "hasFrom":Z
    :goto_2
    if-eqz v16, :cond_3

    iget v7, v3, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 228
    .local v7, "fromType":I
    :goto_3
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 229
    .local v6, "tvTo":Landroid/util/TypedValue;
    if-eqz v6, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    .line 230
    .local v18, "hasTo":Z
    :goto_4
    if-eqz v18, :cond_5

    iget v2, v6, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 232
    .local v2, "toType":I
    :goto_5
    move-object/from16 v19, v3

    .end local v3    # "tvFrom":Landroid/util/TypedValue;
    .local v19, "tvFrom":Landroid/util/TypedValue;
    const/16 v3, 0x1c

    if-eqz v16, :cond_6

    if-lt v7, v3, :cond_6

    const/16 v3, 0x1f

    if-le v7, v3, :cond_7

    goto :goto_6

    :cond_6
    const/16 v3, 0x1f

    :goto_6
    if-eqz v18, :cond_8

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_8

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_8

    .line 237
    :cond_7
    const/4 v15, 0x0

    .line 238
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 241
    :cond_8
    if-eqz v15, :cond_e

    .line 244
    if-eqz v16, :cond_c

    .line 245
    const/4 v3, 0x5

    if-ne v7, v3, :cond_9

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .local v20, "valueFrom":F
    goto :goto_7

    .line 248
    .end local v20    # "valueFrom":F
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 250
    .restart local v20    # "valueFrom":F
    :goto_7
    if-eqz v18, :cond_b

    .line 251
    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .local v3, "valueTo":F
    goto :goto_8

    .line 254
    .end local v3    # "valueTo":F
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 256
    .restart local v3    # "valueTo":F
    :goto_8
    move-object/from16 v21, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .local v21, "tvTo":Landroid/util/TypedValue;
    const/16 v17, 0x0

    aput v20, v6, v17

    move/from16 v22, v10

    const/4 v10, 0x1

    aput v3, v6, v10

    .end local v10    # "valueType":I
    .local v22, "valueType":I
    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_a

    .line 258
    .end local v3    # "valueTo":F
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_b
    move-object/from16 v21, v6

    move/from16 v22, v10

    const/4 v10, 0x1

    const/16 v17, 0x0

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    new-array v3, v10, [F

    aput v20, v3, v17

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_a

    .line 261
    .end local v20    # "valueFrom":F
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_c
    move-object/from16 v21, v6

    move/from16 v22, v10

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_9

    .line 264
    .end local v3    # "valueTo":F
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 266
    .restart local v3    # "valueTo":F
    :goto_9
    const/4 v6, 0x1

    new-array v10, v6, [F

    const/4 v6, 0x0

    aput v3, v10, v6

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 268
    .end local v3    # "valueTo":F
    :goto_a
    nop

    .line 308
    move/from16 v23, v7

    goto/16 :goto_e

    .line 271
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_e
    move-object/from16 v21, v6

    move/from16 v22, v10

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    if-eqz v16, :cond_14

    .line 272
    const/4 v3, 0x5

    if-ne v7, v3, :cond_f

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v3, v6

    .line 278
    .local v3, "valueFrom":I
    move v6, v3

    goto :goto_b

    .line 274
    .end local v3    # "valueFrom":I
    :cond_f
    const/16 v3, 0x1c

    if-lt v7, v3, :cond_10

    const/16 v3, 0x1f

    if-gt v7, v3, :cond_10

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .local v6, "valueFrom":I
    goto :goto_b

    .line 278
    .end local v6    # "valueFrom":I
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .restart local v6    # "valueFrom":I
    :goto_b
    move v3, v6

    .line 280
    .end local v6    # "valueFrom":I
    .restart local v3    # "valueFrom":I
    if-eqz v18, :cond_13

    .line 281
    const/4 v6, 0x5

    if-ne v2, v6, :cond_11

    .line 282
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 287
    .local v6, "valueTo":I
    move v10, v6

    const/4 v6, 0x0

    goto :goto_c

    .line 283
    .end local v6    # "valueTo":I
    :cond_11
    const/16 v6, 0x1c

    if-lt v2, v6, :cond_12

    const/16 v6, 0x1f

    if-gt v2, v6, :cond_12

    .line 285
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, "valueTo":I
    goto :goto_c

    .line 287
    .end local v10    # "valueTo":I
    :cond_12
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 289
    .restart local v10    # "valueTo":I
    :goto_c
    move/from16 v23, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    .end local v7    # "fromType":I
    .local v23, "fromType":I
    aput v3, v7, v6

    const/4 v6, 0x1

    aput v10, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_e

    .line 291
    .end local v10    # "valueTo":I
    .end local v23    # "fromType":I
    .restart local v7    # "fromType":I
    :cond_13
    move/from16 v23, v7

    const/4 v6, 0x1

    .end local v7    # "fromType":I
    .restart local v23    # "fromType":I
    new-array v7, v6, [I

    const/4 v6, 0x0

    aput v3, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_e

    .line 294
    .end local v3    # "valueFrom":I
    .end local v23    # "fromType":I
    .restart local v7    # "fromType":I
    :cond_14
    move/from16 v23, v7

    .end local v7    # "fromType":I
    .restart local v23    # "fromType":I
    if-eqz v18, :cond_17

    .line 295
    const/4 v3, 0x5

    if-ne v2, v3, :cond_15

    .line 296
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 301
    .local v3, "valueTo":I
    move v6, v3

    const/4 v3, 0x0

    goto :goto_d

    .line 297
    .end local v3    # "valueTo":I
    :cond_15
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_16

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_16

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .restart local v6    # "valueTo":I
    goto :goto_d

    .line 301
    .end local v6    # "valueTo":I
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 303
    .restart local v6    # "valueTo":I
    :goto_d
    const/4 v7, 0x1

    new-array v10, v7, [I

    aput v6, v10, v3

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 308
    .end local v6    # "valueTo":I
    :cond_17
    :goto_e
    invoke-virtual {v11, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 311
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 312
    nop

    .line 313
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 312
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 315
    :cond_18
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 316
    nop

    .line 317
    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 316
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 320
    :cond_19
    if-eqz v12, :cond_1a

    .line 321
    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 324
    :cond_1a
    nop

    .line 325
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 326
    .local v3, "resID":I
    if-lez v3, :cond_1b

    .line 327
    invoke-static {v0, v3}, Lorg/aospextended/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    :cond_1b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    return-object v11
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 179
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v0}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 181
    sget-object v1, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 183
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v0
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Lorg/aospextended/screenshot/anim/TargetAnimator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 337
    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)Lorg/aospextended/screenshot/anim/TargetAnimator;

    move-result-object v1

    .line 341
    .local v1, "anim":Lorg/aospextended/screenshot/anim/TargetAnimator;
    invoke-static {p0, p1, v1}, Lorg/aospextended/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 343
    return-object v1
.end method
