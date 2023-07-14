.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->onStatusChange(Lcom/nuance/sns/ScraperStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field final synthetic val$status:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;Lcom/nuance/sns/ScraperStatus;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;->this$1:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;->val$status:Lcom/nuance/sns/ScraperStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;->this$1:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;->val$status:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 219
    return-void
.end method
