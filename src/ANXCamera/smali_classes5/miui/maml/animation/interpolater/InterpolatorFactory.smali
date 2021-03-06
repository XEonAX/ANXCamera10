.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 14

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    if-eq v2, v7, :cond_3

    const/4 v5, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    const-string v10, ""

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v7, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    :try_start_0
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v3, v7

    if-eqz v6, :cond_2

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "InterpolatorFactory"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string v7, "BackEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>()V

    return-object v1

    :cond_4
    const-string v8, "BackEaseOut"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_5
    const-string v9, "BackEaseInOut"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_6
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v1

    :cond_7
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v1

    :cond_8
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v1

    :cond_9
    const-string v7, "BounceEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v1

    :cond_a
    const-string v7, "BounceEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_b
    const-string v7, "BounceEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_c
    const-string v7, "CircEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v1

    :cond_d
    const-string v7, "CircEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_e
    const-string v7, "CircEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_f
    const-string v7, "CubicEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v1

    :cond_10
    const-string v7, "CubicEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_11
    const-string v7, "CubicEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_12
    const-string v7, "ElasticEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>()V

    return-object v1

    :cond_13
    const-string v8, "ElasticEaseOut"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_14
    const-string v9, "ElasticEaseInOut"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_15
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v6, :cond_16

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v1

    :cond_16
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    if-eqz v6, :cond_17

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v1

    :cond_17
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v6, :cond_18

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v1

    :cond_18
    const-string v7, "ExpoEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v1

    :cond_19
    const-string v7, "ExpoEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_1a
    const-string v7, "ExpoEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_1b
    const-string v7, "QuadEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v1

    :cond_1c
    const-string v7, "QuadEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_1d
    const-string v7, "QuadEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_1e
    const-string v7, "QuartEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v1

    :cond_1f
    const-string v7, "QuartEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_20
    const-string v7, "QuartEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_21
    const-string v7, "QuintEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v1

    :cond_22
    const-string v7, "QuintEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_23
    const-string v7, "QuintEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_24
    const-string v7, "SineEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v1

    :cond_25
    const-string v7, "SineEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_26
    const-string v7, "SineEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_27
    const-string v7, "Linear"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    new-instance v1, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v1

    :cond_28
    const-string v7, "PhysicBased"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    new-instance v1, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>()V

    return-object v1

    :cond_29
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    if-eqz v6, :cond_2a

    new-instance v1, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object v1

    :cond_2a
    return-object v1
.end method
