.class final Lcom/google/android/gms/internal/zzkf$1;
.super Lcom/google/android/gms/internal/zzkf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzckn:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkf$1;->zzala:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzkf$1;->zzckn:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkf$zza;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final zzew()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$1;->zzala:Landroid/content/Context;

    .line 1000
    const-string/jumbo v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzkf$1;->zzckn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
