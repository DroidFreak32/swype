.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;->timeoutDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$502$145c3a42(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Z

    .line 210
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$400(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    .line 211
    return-void
.end method
