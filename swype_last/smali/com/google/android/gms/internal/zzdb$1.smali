.class final Lcom/google/android/gms/internal/zzdb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaxv:Lcom/google/android/gms/internal/zzcy;

.field final synthetic zzaxw:Lcom/google/android/gms/internal/zzdb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzcy;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxw:Lcom/google/android/gms/internal/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxv:Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxv:Lcom/google/android/gms/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxw:Lcom/google/android/gms/internal/zzdb;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzdb;->zzaxu:Landroid/content/SharedPreferences;

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcy;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
