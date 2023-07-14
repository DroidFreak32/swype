.class final Lcom/google/android/gms/internal/zzcq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcq;->zzab(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzct$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzate:Lcom/google/android/gms/internal/zzcq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcq$1;->zzate:Lcom/google/android/gms/internal/zzcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzct$zza;

    check-cast p2, Lcom/google/android/gms/internal/zzct$zza;

    .line 1000
    iget v0, p1, Lcom/google/android/gms/internal/zzct$zza;->zzatj:I

    iget v1, p2, Lcom/google/android/gms/internal/zzct$zza;->zzatj:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzct$zza;->value:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 0
    goto :goto_0
.end method
