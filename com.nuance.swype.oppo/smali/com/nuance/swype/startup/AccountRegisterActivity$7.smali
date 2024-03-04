.class final Lcom/nuance/swype/startup/AccountRegisterActivity$7;
.super Ljava/lang/Object;
.source "AccountRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/AccountRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$7;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$7;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->startNextActivity()V

    .line 181
    return-void
.end method
