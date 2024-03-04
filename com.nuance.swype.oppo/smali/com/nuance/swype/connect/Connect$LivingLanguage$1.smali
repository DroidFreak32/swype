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
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;->this$1:Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "running enable"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;->this$1:Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 244
    return-void
.end method
