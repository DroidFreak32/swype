.class public Lcom/nuance/swype/input/appspecific/BehaviorInfo;
.super Ljava/lang/Object;
.source "BehaviorInfo.java"


# static fields
.field public static final INVALID_VERSION:I = -0x1


# instance fields
.field private enabled:Z

.field private final maxVersion:I

.field private final minVersion:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/String;II)V
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "minVersion"    # I
    .param p3, "maxVersion"    # I
    .param p4, "brand"    # Ljava/lang/String;
    .param p5, "minSdk"    # I
    .param p6, "maxSdk"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->minVersion:I

    .line 18
    iput p3, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->maxVersion:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->enabled:Z

    .line 23
    if-eqz p4, :cond_1c

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1c
    if-eqz p5, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p5, :cond_28

    :cond_22
    if-eqz p6, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, p6, :cond_2c

    .line 27
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    .line 31
    :goto_2b
    return-void

    .line 29
    :cond_2c
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    goto :goto_2b
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->enabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public updateEnabled(I)V
    .registers 4
    .param p1, "packageVersion"    # I

    .prologue
    const/4 v1, -0x1

    .line 35
    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->minVersion:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->minVersion:I

    if-gt v0, p1, :cond_15

    :cond_9
    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->maxVersion:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->maxVersion:I

    if-lt v0, p1, :cond_15

    :cond_11
    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->enabled:Z

    .line 37
    return-void

    .line 35
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method
