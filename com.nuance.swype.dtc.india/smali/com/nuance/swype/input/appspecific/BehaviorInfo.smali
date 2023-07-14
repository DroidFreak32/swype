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
    .locals 1
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
    if-eqz p4, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p5, :cond_2

    :cond_1
    if-eqz p6, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, p6, :cond_3

    .line 27
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_3
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateEnabled(I)V
    .locals 2
    .param p1, "packageVersion"    # I

    .prologue
    const/4 v1, -0x1

    .line 35
    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->minVersion:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->minVersion:I

    if-gt v0, p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->maxVersion:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->maxVersion:I

    if-lt v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->enabled:Z

    .line 37
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
