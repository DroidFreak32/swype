.class final Lcom/google/android/gms/internal/zzpw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw;->zzapp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tQ:Lcom/google/android/gms/internal/zzpw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$1;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$1;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->mContext:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/common/zzc;->zzbp(Landroid/content/Context;)V

    return-void
.end method
