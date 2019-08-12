.class public Lcom/nuance/connect/location/LocationSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/location/LocationSettings$LocationMode;
    }
.end annotation


# instance fields
.field private activeSearch:Z

.field private interval:J

.field private mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field private totalTime:J

.field private typeRequested:Ljava/util/HashSet;
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
.method public constructor <init>(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/nuance/connect/location/LocationSettings;->interval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/LocationSettings;->totalTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/location/LocationSettings;->activeSearch:Z

    iput-object p1, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/location/LocationSettings$LocationMode;J)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/nuance/connect/location/LocationSettings;->interval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/LocationSettings;->totalTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/location/LocationSettings;->activeSearch:Z

    iput-object p1, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-wide p2, p0, Lcom/nuance/connect/location/LocationSettings;->interval:J

    return-void
.end method

.method public static getMaxMode(Lcom/nuance/connect/location/LocationSettings$LocationMode;Lcom/nuance/connect/location/LocationSettings$LocationMode;)Lcom/nuance/connect/location/LocationSettings$LocationMode;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public addType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTypes()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getActiveSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/LocationSettings;->activeSearch:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/LocationSettings;->interval:J

    return-wide v0
.end method

.method public getMode()Lcom/nuance/connect/location/LocationSettings$LocationMode;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/LocationSettings;->totalTime:J

    return-wide v0
.end method

.method public getTypes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    return-object v0
.end method

.method public hasType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markUpdate()V
    .locals 0

    return-void
.end method

.method public merge(Lcom/nuance/connect/location/LocationSettings;)V
    .locals 4

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings;->getMode()Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/location/LocationSettings;->getMode()Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->getMaxMode(Lcom/nuance/connect/location/LocationSettings$LocationMode;Lcom/nuance/connect/location/LocationSettings$LocationMode;)Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/LocationSettings;->setMode(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings;->getInterval()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nuance/connect/location/LocationSettings;->getInterval()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/location/LocationSettings;->setInterval(J)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings;->getActiveSearch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/location/LocationSettings;->getActiveSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/LocationSettings;->setActiveSearch(Z)V

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings;->getTypes()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/location/LocationSettings;->activeSearch:Z

    return-void
.end method

.method public setInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/location/LocationSettings;->interval:J

    return-void
.end method

.method public setMode(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-void
.end method

.method public setTotalTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/location/LocationSettings;->totalTime:J

    return-void
.end method

.method public shouldContinue()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/location/LocationSettings;->mode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
