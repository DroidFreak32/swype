.class Lcom/nuance/swype/connect/Connect$LivingLanguage$1;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/connect/Connect$LivingLanguage;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect$LivingLanguage;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/connect/Connect$LivingLanguage;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;->this$1:Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 258
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "running enable"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;->this$1:Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 260
    return-void
.end method
