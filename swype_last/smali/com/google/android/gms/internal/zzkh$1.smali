.class final Lcom/google/android/gms/internal/zzkh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzclf:Ljava/util/List;

.field final synthetic zzclg:Lcom/google/android/gms/internal/zzdq;

.field final synthetic zzclh:Lcom/google/android/gms/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;Ljava/util/List;Lcom/google/android/gms/internal/zzdq;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclh:Lcom/google/android/gms/internal/zzkh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclf:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclg:Lcom/google/android/gms/internal/zzdq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzkh$1;->zzala:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzkn()V
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "Pinging url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclg:Lcom/google/android/gms/internal/zzdq;

    .line 1000
    iget-object v3, v1, Lcom/google/android/gms/internal/zzdq;->zzbep:Landroid/support/customtabs/CustomTabsClient;

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdq;->zzkl()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl$31eb0de9(Landroid/net/Uri;)Z

    goto :goto_6

    .line 0
    :cond_3a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$1;->zzclg:Lcom/google/android/gms/internal/zzdq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$1;->zzala:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdq;->zzd(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzko()V
    .registers 1

    return-void
.end method
