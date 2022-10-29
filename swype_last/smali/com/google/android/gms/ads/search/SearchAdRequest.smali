.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final mBackgroundColor:I

.field final zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

.field private final zzanr:Ljava/lang/String;

.field private final zzcrb:I

.field private final zzcrc:I

.field private final zzcrd:I

.field private final zzcre:I

.field private final zzcrf:I

.field private final zzcrg:I

.field private final zzcrh:I

.field private final zzcri:Ljava/lang/String;

.field private final zzcrj:I

.field private final zzcrk:Ljava/lang/String;

.field private final zzcrl:I

.field private final zzcrm:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzad;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrb:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->mBackgroundColor:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrc:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrd:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcre:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrf:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrg:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrh:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcri:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrj:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrk:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrl:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrm:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzanr:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/ads/internal/client/zzad;-><init>(Lcom/google/android/gms/ads/internal/client/zzad$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAnchorTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrb:I

    return v0
.end method

.method public final getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->mBackgroundColor:I

    return v0
.end method

.method public final getBackgroundGradientBottom()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrc:I

    return v0
.end method

.method public final getBackgroundGradientTop()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrd:I

    return v0
.end method

.method public final getBorderColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcre:I

    return v0
.end method

.method public final getBorderThickness()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrf:I

    return v0
.end method

.method public final getBorderType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrg:I

    return v0
.end method

.method public final getCallButtonColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrh:I

    return v0
.end method

.method public final getCustomChannels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcri:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptionTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrj:I

    return v0
.end method

.method public final getFontFace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrk:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrl:I

    return v0
.end method

.method public final getHeaderTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrm:I

    return v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzanr:Ljava/lang/String;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
