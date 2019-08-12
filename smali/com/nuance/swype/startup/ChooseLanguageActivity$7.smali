.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$7;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->showSelectSwypeDialog()V
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
    .line 198
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->finish()V

    .line 203
    return-void
.end method
