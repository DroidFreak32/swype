.class final Lcom/nuance/swype/startup/TermsOfServiceActivity$1;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/TermsOfServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/TermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$1;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$1;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->doShowDialog$13462e()V

    .line 72
    return-void
.end method
