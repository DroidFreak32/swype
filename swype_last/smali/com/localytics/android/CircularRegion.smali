.class public Lcom/localytics/android/CircularRegion;
.super Lcom/localytics/android/Region;
.source "CircularRegion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/CircularRegion$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 236
    new-instance v0, Lcom/localytics/android/CircularRegion$1;

    invoke-direct {v0}, Lcom/localytics/android/CircularRegion$1;-><init>()V

    sput-object v0, Lcom/localytics/android/CircularRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Lcom/localytics/android/Region;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/localytics/android/CircularRegion;->mPlaceId:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mUniqueId:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/localytics/android/CircularRegion;->mLatitude:D

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/localytics/android/CircularRegion;->mLongitude:D

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mName:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mType:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_36
    iput-boolean v0, p0, Lcom/localytics/android/CircularRegion;->mEnterAnalyticsEnabled:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4f

    :goto_3e
    iput-boolean v1, p0, Lcom/localytics/android/CircularRegion;->mExitAnalyticsEnabled:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/localytics/android/CircularRegion;->mSchemaVersion:I

    .line 232
    invoke-virtual {p0, p1}, Lcom/localytics/android/CircularRegion;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mAttributes:Ljava/util/Map;

    .line 234
    return-void

    :cond_4d
    move v0, v2

    .line 229
    goto :goto_36

    :cond_4f
    move v1, v2

    .line 230
    goto :goto_3e
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/localytics/android/CircularRegion$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/localytics/android/CircularRegion$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/localytics/android/CircularRegion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/localytics/android/CircularRegion$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/localytics/android/CircularRegion$Builder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/localytics/android/Region;-><init>()V

    .line 32
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mPlaceId:J
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$000(Lcom/localytics/android/CircularRegion$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/CircularRegion;->mPlaceId:J

    .line 33
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mUniqueId:Ljava/lang/String;
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$100(Lcom/localytics/android/CircularRegion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mUniqueId:Ljava/lang/String;

    .line 34
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mLatitude:D
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$200(Lcom/localytics/android/CircularRegion$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/CircularRegion;->mLatitude:D

    .line 35
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mLongitude:D
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$300(Lcom/localytics/android/CircularRegion$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/CircularRegion;->mLongitude:D

    .line 36
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mRadius:I
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$400(Lcom/localytics/android/CircularRegion$Builder;)I

    move-result v0

    iput v0, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    .line 37
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$500(Lcom/localytics/android/CircularRegion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mName:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "geofence"

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mType:Ljava/lang/String;

    .line 39
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mAttributes:Ljava/util/Map;
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$600(Lcom/localytics/android/CircularRegion$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CircularRegion;->mAttributes:Ljava/util/Map;

    .line 40
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mEnterAnalyticsEnabled:Z
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$700(Lcom/localytics/android/CircularRegion$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/localytics/android/CircularRegion;->mEnterAnalyticsEnabled:Z

    .line 41
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mExitAnalyticsEnabled:Z
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$800(Lcom/localytics/android/CircularRegion$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/localytics/android/CircularRegion;->mExitAnalyticsEnabled:Z

    .line 42
    # getter for: Lcom/localytics/android/CircularRegion$Builder;->mSchemaVersion:I
    invoke-static {p1}, Lcom/localytics/android/CircularRegion$Builder;->access$900(Lcom/localytics/android/CircularRegion$Builder;)I

    move-result v0

    iput v0, p0, Lcom/localytics/android/CircularRegion;->mSchemaVersion:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/CircularRegion$Builder;Lcom/localytics/android/CircularRegion$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/localytics/android/CircularRegion$Builder;
    .param p2, "x1"    # Lcom/localytics/android/CircularRegion$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/localytics/android/CircularRegion;-><init>(Lcom/localytics/android/CircularRegion$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getRadius()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    return v0
.end method

.method protected setRadius(I)V
    .registers 2
    .param p1, "radius"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[CircularRegion] id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/localytics/android/CircularRegion;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/localytics/android/CircularRegion;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/localytics/android/CircularRegion;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | rad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/CircularRegion;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/CircularRegion;->mAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-wide v4, p0, Lcom/localytics/android/CircularRegion;->mPlaceId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v0, p0, Lcom/localytics/android/CircularRegion;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/localytics/android/CircularRegion;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-wide v4, p0, Lcom/localytics/android/CircularRegion;->mLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 211
    iget-wide v4, p0, Lcom/localytics/android/CircularRegion;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 212
    iget-object v0, p0, Lcom/localytics/android/CircularRegion;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/localytics/android/CircularRegion;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/localytics/android/CircularRegion;->mEnterAnalyticsEnabled:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 215
    iget-boolean v0, p0, Lcom/localytics/android/CircularRegion;->mExitAnalyticsEnabled:Z

    if-eqz v0, :cond_41

    :goto_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    iget v0, p0, Lcom/localytics/android/CircularRegion;->mSchemaVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lcom/localytics/android/CircularRegion;->mAttributes:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/CircularRegion;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 218
    return-void

    :cond_3f
    move v0, v2

    .line 214
    goto :goto_2a

    :cond_41
    move v1, v2

    .line 215
    goto :goto_31
.end method
