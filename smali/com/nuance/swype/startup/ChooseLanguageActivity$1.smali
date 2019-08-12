.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$1;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 52
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$000(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->timeoutDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$100(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
