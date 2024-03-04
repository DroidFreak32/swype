.class public final Lcom/nuance/swype/location/SwypeLocationSettings;
.super Ljava/lang/Object;
.source "SwypeLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    }
.end annotation


# instance fields
.field activeSearch:Z

.field geoCodeInterval:J

.field geocode:Z

.field interval:J

.field lastGeocode:J

.field mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field typeRequested:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;)V
    .locals 6
    .param p1, "mode"    # Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    .line 27
    iput-wide v4, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->interval:J

    .line 32
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    .line 39
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->geoCodeInterval:J

    .line 41
    iput-wide v4, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    .line 46
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->activeSearch:Z

    .line 55
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 56
    return-void
.end method

.method public static getMaxMode(Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .locals 2
    .param p0, "mode1"    # Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .param p1, "mode2"    # Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .end local p0    # "mode1":Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    :goto_0
    return-object p0

    .restart local p0    # "mode1":Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public final addType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public final hasType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
