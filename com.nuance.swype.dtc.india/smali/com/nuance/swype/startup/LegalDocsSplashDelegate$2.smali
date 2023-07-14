.class final Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;
.super Ljava/lang/Object;
.source "LegalDocsSplashDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/LegalDocsSplashDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    const-class v1, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->getThemeID()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Ljava/lang/String;II)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 70
    .local v0, "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v1, v1, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v1, v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    .line 73
    :cond_0
    return-void
.end method
