.class final Lcom/google/android/gms/internal/zzkn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjh:Ljava/lang/String;

.field final synthetic zzcmf:Lcom/google/android/gms/internal/zzkn$zzc;

.field final synthetic zzcmg:Lcom/google/android/gms/internal/zzkn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkn;Ljava/lang/String;Lcom/google/android/gms/internal/zzkn$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn$2;->zzcmg:Lcom/google/android/gms/internal/zzkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkn$2;->zzbjh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkn$2;->zzcmf:Lcom/google/android/gms/internal/zzkn$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzr;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$2;->zzbjh:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Failed to load URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$2;->zzcmf:Lcom/google/android/gms/internal/zzkn$zzc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkn$zzc;->zzb(Ljava/lang/Object;)V

    return-void
.end method
