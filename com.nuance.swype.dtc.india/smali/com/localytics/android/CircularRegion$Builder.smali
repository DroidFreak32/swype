.class public Lcom/localytics/android/CircularRegion$Builder;
.super Ljava/lang/Object;
.source "CircularRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/CircularRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterAnalyticsEnabled:Z

.field private mExitAnalyticsEnabled:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mName:Ljava/lang/String;

.field private mPlaceId:J

.field private mRadius:I

.field private mSchemaVersion:I

.field private mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide v2, 0x4076800000000000L    # 360.0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mPlaceId:J

    .line 62
    iput-object v4, p0, Lcom/localytics/android/CircularRegion$Builder;->mUniqueId:Ljava/lang/String;

    .line 63
    iput-wide v2, p0, Lcom/localytics/android/CircularRegion$Builder;->mLatitude:D

    .line 64
    iput-wide v2, p0, Lcom/localytics/android/CircularRegion$Builder;->mLongitude:D

    .line 65
    iput-object v4, p0, Lcom/localytics/android/CircularRegion$Builder;->mName:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mRadius:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mAttributes:Ljava/util/Map;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/CircularRegion$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mPlaceId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/localytics/android/CircularRegion$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/CircularRegion$Builder;)D
    .locals 2
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/localytics/android/CircularRegion$Builder;)D
    .locals 2
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/localytics/android/CircularRegion$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/localytics/android/CircularRegion$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/localytics/android/CircularRegion$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/localytics/android/CircularRegion$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mEnterAnalyticsEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/localytics/android/CircularRegion$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mExitAnalyticsEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/localytics/android/CircularRegion$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 59
    iget v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mSchemaVersion:I

    return v0
.end method


# virtual methods
.method public build()Lcom/localytics/android/CircularRegion;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/localytics/android/CircularRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/CircularRegion;-><init>(Lcom/localytics/android/CircularRegion$Builder;Lcom/localytics/android/CircularRegion$1;)V

    return-object v0
.end method

.method public setAttributes(Ljava/util/Map;)Lcom/localytics/android/CircularRegion$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/CircularRegion$Builder;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/localytics/android/CircularRegion$Builder;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    :cond_0
    return-object p0
.end method

.method public setEnterAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "enterAnalyticsEnabled"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mEnterAnalyticsEnabled:Z

    .line 164
    return-object p0
.end method

.method public setExitAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "exitAnalyticsEnabled"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mExitAnalyticsEnabled:Z

    .line 175
    return-object p0
.end method

.method public setLatitude(D)Lcom/localytics/android/CircularRegion$Builder;
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mLatitude:D

    .line 106
    return-object p0
.end method

.method public setLongitude(D)Lcom/localytics/android/CircularRegion$Builder;
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mLongitude:D

    .line 117
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mName:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method protected setPlaceId(J)Lcom/localytics/android/CircularRegion$Builder;
    .locals 1
    .param p1, "placeId"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mPlaceId:J

    .line 84
    return-object p0
.end method

.method public setRadius(I)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mRadius:I

    .line 153
    return-object p0
.end method

.method public setSchemaVersion(I)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "schemaVersion"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mSchemaVersion:I

    .line 186
    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/localytics/android/CircularRegion$Builder;->mUniqueId:Ljava/lang/String;

    .line 95
    return-object p0
.end method
