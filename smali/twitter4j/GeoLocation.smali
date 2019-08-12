.class public Ltwitter4j/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x434604a578b0df0fL


# instance fields
.field protected latitude:D

.field protected longitude:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Ltwitter4j/GeoLocation;->latitude:D

    .line 38
    iput-wide p3, p0, Ltwitter4j/GeoLocation;->longitude:D

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    instance-of v3, p1, Ltwitter4j/GeoLocation;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 69
    check-cast v0, Ltwitter4j/GeoLocation;

    .line 71
    .local v0, "that":Ltwitter4j/GeoLocation;
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v4

    iget-wide v6, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v4

    iget-wide v6, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 81
    iget-wide v4, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 82
    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 83
    .local v0, "result":I
    iget-wide v4, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 84
    .local v2, "temp":J
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 85
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoLocation{latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
