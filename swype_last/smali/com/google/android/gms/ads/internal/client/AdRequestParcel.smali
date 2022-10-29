.class public final Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I

.field public final zzatm:J

.field public final zzatn:I

.field public final zzato:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzatp:Z

.field public final zzatq:I

.field public final zzatr:Z

.field public final zzats:Ljava/lang/String;

.field public final zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

.field public final zzatu:Landroid/location/Location;

.field public final zzatv:Ljava/lang/String;

.field public final zzatw:Landroid/os/Bundle;

.field public final zzatx:Landroid/os/Bundle;

.field public final zzaty:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzatz:Ljava/lang/String;

.field public final zzaua:Ljava/lang/String;

.field public final zzaub:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    if-nez p4, :cond_e

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_e
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    iput p8, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Z

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    if-nez p14, :cond_29

    new-instance p14, Landroid/os/Bundle;

    invoke-direct/range {p14 .. p14}, Landroid/os/Bundle;-><init>()V

    :cond_29
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaub:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    if-ne v1, v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Z

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaub:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaub:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 0
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaub:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1000
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzg;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Parcel;I)V

    return-void
.end method
