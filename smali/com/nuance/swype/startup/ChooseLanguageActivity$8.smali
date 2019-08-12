.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$8;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->timeoutDialog()Landroid/app/AlertDialog$Builder;
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
    .line 244
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$300(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    .line 251
    return-void
.end method
