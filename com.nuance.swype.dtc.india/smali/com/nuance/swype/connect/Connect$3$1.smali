.class Lcom/nuance/swype/connect/Connect$3$1;
.super Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/Connect$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/connect/Connect$3;

.field final synthetic val$services:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect$3;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/connect/Connect$3;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$3$1;->this$1:Lcom/nuance/swype/connect/Connect$3;

    iput-object p4, p0, Lcom/nuance/swype/connect/Connect$3$1;->val$services:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public legacySecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaLegacySecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public services()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$3$1;->val$services:[Ljava/lang/String;

    return-object v0
.end method
