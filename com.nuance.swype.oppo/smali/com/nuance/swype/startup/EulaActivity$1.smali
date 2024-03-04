.class final Lcom/nuance/swype/startup/EulaActivity$1;
.super Ljava/lang/Object;
.source "EulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/EulaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/EulaActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/EulaActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nuance/swype/startup/EulaActivity$1;->this$0:Lcom/nuance/swype/startup/EulaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaActivity$1;->this$0:Lcom/nuance/swype/startup/EulaActivity;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptEula()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaActivity$1;->this$0:Lcom/nuance/swype/startup/EulaActivity;

    iget v0, v0, Lcom/nuance/swype/startup/EulaActivity;->startFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaActivity$1;->this$0:Lcom/nuance/swype/startup/EulaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/EulaActivity;->setResult(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaActivity$1;->this$0:Lcom/nuance/swype/startup/EulaActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/EulaActivity;->startNextActivity()V

    .line 56
    return-void

    .line 48
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method
