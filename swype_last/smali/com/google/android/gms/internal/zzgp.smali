.class public final Lcom/google/android/gms/internal/zzgp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzaud:I

.field private final zzaup:Z

.field private final zzbph:I

.field private final zzfp:Ljava/util/Date;

.field private final zzfr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfs:Z

.field private final zzft:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgp;->zzfp:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzgp;->zzaud:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgp;->zzfr:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgp;->zzft:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzgp;->zzfs:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzgp;->zzbph:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzgp;->zzaup:Z

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzfp:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgp;->zzaud:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzfr:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzft:Landroid/location/Location;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgp;->zzaup:Z

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgp;->zzfs:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgp;->zzbph:I

    return v0
.end method
