.class Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;
.super Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACInitializeInfoImpl"
.end annotation


# instance fields
.field final enabledServices:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;->enabledServices:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;->enabledServices:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public services()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;->enabledServices:[Ljava/lang/String;

    return-object v0
.end method
