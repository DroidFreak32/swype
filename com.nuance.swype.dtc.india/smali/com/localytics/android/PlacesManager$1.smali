.class Lcom/localytics/android/PlacesManager$1;
.super Ljava/lang/Object;
.source "PlacesManager.java"

# interfaces
.implements Lcom/localytics/android/BaseProvider$InClauseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PlacesManager;->_removeDeactivatedCampaigns(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/localytics/android/BaseProvider$InClauseBuilder",
        "<",
        "Lcom/localytics/android/MarketingMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/PlacesManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/PlacesManager;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/localytics/android/PlacesManager$1;->this$0:Lcom/localytics/android/PlacesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/localytics/android/MarketingMessage;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 299
    const-string/jumbo v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p1, Lcom/localytics/android/MarketingMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/PlacesManager$1;->getValue(Lcom/localytics/android/MarketingMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
