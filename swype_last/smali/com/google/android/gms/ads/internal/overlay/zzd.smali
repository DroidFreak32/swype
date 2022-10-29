.class public Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Lcom/google/android/gms/internal/zzhi$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
    }
.end annotation


# static fields
.field static final zzbsn:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field zzbgf:Lcom/google/android/gms/internal/zzlh;

.field zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

.field zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field zzbsr:Z

.field zzbss:Landroid/widget/FrameLayout;

.field zzbst:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field zzbsu:Z

.field zzbsv:Z

.field zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

.field zzbsx:Z

.field zzbsy:I

.field zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private zzbta:Z

.field private zzbtb:Z

.field private zzbtc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsn:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhi$zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private zzaa(Z)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
        }
    .end annotation

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string/jumbo v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamf:Z

    if-eqz v0, :cond_34

    :cond_2d
    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    if-eqz v0, :cond_186

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzho()Z

    move-result v3

    :goto_42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    if-eqz v3, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzki;->zztj()I

    move-result v2

    if-ne v0, v2, :cond_18c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_189

    const/4 v0, 0x1

    :goto_65
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    :cond_67
    :goto_67
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Delay onShow to next orientation change: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzki;->zza(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    :cond_99
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    if-nez v0, :cond_1b0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setBackgroundColor(I)V

    :goto_a4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdb()V

    if-eqz p1, :cond_1de

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfr()Lcom/google/android/gms/internal/zzlj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/zzlj;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtn:Lcom/google/android/gms/internal/zzel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtr:Lcom/google/android/gms/ads/internal/overlay/zzp;

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtt:Lcom/google/android/gms/internal/zzer;

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    .line 2000
    iget-object v12, v0, Lcom/google/android/gms/internal/zzli;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    .line 0
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzer;Lcom/google/android/gms/internal/zzet;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhg;Lcom/google/android/gms/internal/zzjo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    .line 3000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->loadUrl(Ljava/lang/String;)V

    :goto_114
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzlh;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    :cond_121
    :goto_121
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzlh;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13d

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13d

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13d
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    if-eqz v0, :cond_148

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    sget v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsn:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->setBackgroundColor(I)V

    :cond_148
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_15e

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    if-nez v0, :cond_15e

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoa()V

    :cond_15e
    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzz(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuk()Z

    move-result v0

    if-eqz v0, :cond_16d

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :cond_16d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    if-eqz v0, :cond_1ed

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzakl:Lcom/google/android/gms/ads/internal/overlay/zzm;

    :goto_177
    if-eqz v0, :cond_1ef

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzlh;Landroid/widget/RelativeLayout;)Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    :goto_185
    return-void

    :cond_186
    const/4 v3, 0x0

    goto/16 :goto_42

    :cond_189
    const/4 v0, 0x0

    goto/16 :goto_65

    :cond_18c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzki;->zztk()I

    move-result v2

    if-ne v0, v2, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1ae

    const/4 v0, 0x1

    :goto_1aa
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    goto/16 :goto_67

    :cond_1ae
    const/4 v0, 0x0

    goto :goto_1aa

    :cond_1b0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    sget v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsn:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setBackgroundColor(I)V

    goto/16 :goto_a4

    :cond_1b9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Ljava/lang/String;

    if-eqz v0, :cond_1d5

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbto:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Ljava/lang/String;

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "UTF-8"

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/zzlh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_114

    :cond_1d5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string/jumbo v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1de
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->setContext(Landroid/content/Context;)V

    goto/16 :goto_121

    :cond_1ed
    const/4 v0, 0x0

    goto :goto_177

    :cond_1ef
    const-string/jumbo v0, "Appstreaming controller is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_185
.end method

.method private zzny()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    .line 4000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzlh;->zzaf(I)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzagf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->zzah(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->index:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtf:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    :cond_51
    :goto_51
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdx()V

    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->destroy()V

    goto :goto_d

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->setContext(Landroid/content/Context;)V

    goto :goto_51
.end method

.method private zzoa()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzoa()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_11

    const-string/jumbo v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_3c

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string/jumbo v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catch Lcom/google/android/gms/ads/internal/overlay/zzd$zza; {:try_start_13 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnl:I

    const v1, 0x7270e0

    if-le v0, v1, :cond_4a

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:Z

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzame:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    :goto_70
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbca:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamj:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_98

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    :cond_98
    if-nez p1, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_ab

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:Z

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdy()V

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbts:I

    if-eq v0, v3, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtk:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtk:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    :cond_be
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtu:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setId(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbts:I

    packed-switch v0, :pswitch_data_130

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string/jumbo v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    goto :goto_70

    :pswitch_e6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_3b

    :pswitch_ec
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;-><init>(Lcom/google/android/gms/internal/zzlh;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_3b

    :pswitch_fd
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_3b

    :pswitch_103
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    if-eqz v0, :cond_111

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3b

    :cond_111
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfn()Lcom/google/android/gms/ads/internal/overlay/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtj:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtr:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_12d
    .catch Lcom/google/android/gms/ads/internal/overlay/zzd$zza; {:try_start_3c .. :try_end_12d} :catch_2c

    goto/16 :goto_3b

    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_ec
        :pswitch_fd
        :pswitch_103
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzny()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznu()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->onPause()V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsp:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    if-nez v0, :cond_2d

    :cond_25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzki;->zzi(Lcom/google/android/gms/internal/zzlh;)Z

    :cond_2d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzny()V

    return-void
.end method

.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbts:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtl:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->onResume()V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzki;->zzj(Lcom/google/android/gms/internal/zzlh;)Z

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->resume()V

    return-void

    :cond_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    goto :goto_17

    :cond_42
    const-string/jumbo v0, "The webview does not exit. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzny()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdb()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:Z

    return-void
.end method

.method public zza(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(ZZ)V

    :cond_9
    return-void
.end method

.method public zzdb()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Z

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzf(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V

    return-void
.end method

.method public zznu()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdb()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Landroid/widget/FrameLayout;

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:Z

    return-void
.end method

.method public zznv()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zznw()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzou()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzou()Z

    move-result v2

    if-eqz v2, :cond_28

    :goto_19
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    :cond_28
    move v0, v1

    goto :goto_19
.end method

.method public zznx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzz(Z)V

    return-void
.end method

.method public zznz()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoa()V

    :cond_a
    return-void
.end method

.method public zzob()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    .line 5000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->zzbte:Z

    .line 0
    return-void
.end method

.method public zzz(Z)V
    .registers 6

    const/4 v3, -0x2

    if-eqz p1, :cond_30

    const/16 v0, 0x32

    :goto_5
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;ILcom/google/android/gms/ads/internal/overlay/zzu;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_33

    const/16 v0, 0xb

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbso:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Z

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_30
    const/16 v0, 0x20

    goto :goto_5

    :cond_33
    const/16 v0, 0x9

    goto :goto_1c
.end method
