.class Lcom/nuance/swype/input/AppContextPredictionSetter$1;
.super Ljava/lang/Object;
.source "AppContextPredictionSetter.java"

# interfaces
.implements Lcom/nuance/swype/location/SwypeLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AppContextPredictionSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AppContextPredictionSetter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AppContextPredictionSetter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/AppContextPredictionSetter$1;->this$0:Lcom/nuance/swype/input/AppContextPredictionSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processLocationUpdate(Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 8
    .param p1, "location"    # Lcom/nuance/swype/location/SwypeLocation;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p1, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    .line 112
    .local v0, "loc":Landroid/location/Location;
    iget-object v1, p0, Lcom/nuance/swype/input/AppContextPredictionSetter$1;->this$0:Lcom/nuance/swype/input/AppContextPredictionSetter;

    const-string v2, "%.2f,%.2f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/AppContextPredictionSetter;->access$002(Lcom/nuance/swype/input/AppContextPredictionSetter;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .end local v0    # "loc":Landroid/location/Location;
    :cond_0
    return-void
.end method


# virtual methods
.method public onLocation(Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 0
    .param p1, "location"    # Lcom/nuance/swype/location/SwypeLocation;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AppContextPredictionSetter$1;->processLocationUpdate(Lcom/nuance/swype/location/SwypeLocation;)V

    .line 107
    return-void
.end method

.method public onLocationComplete(Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 0
    .param p1, "location"    # Lcom/nuance/swype/location/SwypeLocation;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AppContextPredictionSetter$1;->processLocationUpdate(Lcom/nuance/swype/location/SwypeLocation;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
