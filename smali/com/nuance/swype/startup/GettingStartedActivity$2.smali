.class final Lcom/nuance/swype/startup/GettingStartedActivity$2;
.super Ljava/lang/Object;
.source "GettingStartedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/GettingStartedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/GettingStartedActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/GettingStartedActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nuance/swype/startup/GettingStartedActivity$2;->this$0:Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedActivity$2;->this$0:Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showTutorial()V

    .line 51
    return-void
.end method
