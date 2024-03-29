.class public Lorg/aospextended/screenshot/anim/TargetAnimator;
.super Landroid/animation/ValueAnimator;
.source "TargetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;,
        Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimUpdate;,
        Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimRun;,
        Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;,
        Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;,
        Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mLoader:Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

.field private mSetAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetEnds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetStarts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 16
    const-string v0, "TargetAnimator"

    iput-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mLoader:Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    .line 34
    invoke-virtual {p0, p0}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    invoke-virtual {p0, p0}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lorg/aospextended/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/anim/TargetAnimator;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/reflect/Method;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/aospextended/screenshot/anim/TargetAnimator;->invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-void
.end method

.method private addSetters(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p3, "clsParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;>;"
    new-instance v0, Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lorg/aospextended/screenshot/anim/TargetAnimator;Lorg/aospextended/screenshot/anim/TargetAnimator$1;)V

    .line 93
    .local v0, "methods":Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 94
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p2}, Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 96
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/aospextended/screenshot/anim/TargetAnimator;->getSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 97
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 102
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "e":Ljava/lang/SecurityException;
    goto :goto_2

    .line 100
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 98
    :catch_2
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 104
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 105
    :goto_2
    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method private getSetterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 135
    .local v0, "firstLetter":C
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "value"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 122
    :catch_3
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 131
    :goto_1
    return-void
.end method

.method private invokeSetters(Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V
    .locals 6
    .param p1, "runner"    # Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 112
    .local v2, "target":Landroid/view/View;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;

    .line 113
    .local v3, "propSetter":Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {v3}, Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .local v5, "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    invoke-interface {p1, v2, v5}, Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;->run(Landroid/view/View;Ljava/util/Map$Entry;)V

    .line 115
    .end local v5    # "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    goto :goto_1

    .line 116
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;>;"
    .end local v2    # "target":Landroid/view/View;
    .end local v3    # "propSetter":Lorg/aospextended/screenshot/anim/TargetAnimator$PropSetter;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public addPropAnimator(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    .line 77
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public addPropEnd(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    .line 85
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public addPropStart(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;

    .line 81
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lorg/aospextended/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public getLoader()Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mLoader:Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 48
    new-instance v0, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "End"

    invoke-direct {v0, p0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lorg/aospextended/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;->invokeSetters(Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 43
    new-instance v0, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "Start"

    invoke-direct {v0, p0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lorg/aospextended/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/aospextended/screenshot/anim/TargetAnimator;->invokeSetters(Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    .local v0, "value":F
    new-instance v1, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimUpdate;

    invoke-direct {v1, p0, v0}, Lorg/aospextended/screenshot/anim/TargetAnimator$OnAnimUpdate;-><init>(Lorg/aospextended/screenshot/anim/TargetAnimator;F)V

    iget-object v2, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lorg/aospextended/screenshot/anim/TargetAnimator;->invokeSetters(Lorg/aospextended/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public setLoader(Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;)V
    .locals 0
    .param p1, "loader"    # Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    .line 73
    iput-object p1, p0, Lorg/aospextended/screenshot/anim/TargetAnimator;->mLoader:Lorg/aospextended/screenshot/anim/TargetAnimator$ViewLoader;

    .line 74
    return-void
.end method
