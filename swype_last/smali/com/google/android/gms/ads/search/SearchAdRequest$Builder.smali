.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private final zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

.field private zzanr:Ljava/lang/String;

.field private zzcrb:I

.field private zzcrc:I

.field private zzcrd:I

.field private zzcre:I

.field private zzcrf:I

.field private zzcrg:I

.field private zzcrh:I

.field private zzcri:Ljava/lang/String;

.field private zzcrj:I

.field private zzcrk:Ljava/lang/String;

.field private zzcrl:I

.field private zzcrm:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzad$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrb:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrc:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrd:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcre:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrf:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrh:I

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrj:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrl:I

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrm:I

    return v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzanr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    return-object v0
.end method


# virtual methods
.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzag(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;B)V

    return-object v0
.end method

.method public final setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrb:I

    return-object p0
.end method

.method public final setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    const/4 v1, 0x0

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrc:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrd:I

    return-object p0
.end method

.method public final setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrc:I

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrd:I

    return-object p0
.end method

.method public final setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcre:I

    return-object p0
.end method

.method public final setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrf:I

    return-object p0
.end method

.method public final setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return-object p0
.end method

.method public final setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrh:I

    return-object p0
.end method

.method public final setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcri:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrj:I

    return-object p0
.end method

.method public final setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrk:Ljava/lang/String;

    return-object p0
.end method

.method public final setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrl:I

    return-object p0
.end method

.method public final setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrm:I

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzanr:Ljava/lang/String;

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzak(Ljava/lang/String;)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzn(Z)V

    return-object p0
.end method
