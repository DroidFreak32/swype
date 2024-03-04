.class final Lcom/nuance/swype/startup/StartupActivity$4;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/StartupActivity;->showSelectSwypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/StartupActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/StartupActivity;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupActivity$4;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity$4;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    .line 788
    return-void
.end method
