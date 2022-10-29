.class final Lcom/google/android/gms/internal/zzkk$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzclp:Ljava/lang/String;

.field final synthetic zzclq:Lcom/google/android/gms/internal/zzkk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkk;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkk$1;->zzclq:Lcom/google/android/gms/internal/zzkk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkk$1;->zzclp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkk$1;->zzclq:Lcom/google/android/gms/internal/zzkk;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzkk;->mContext:Landroid/content/Context;

    .line 0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkk$1;->zzclp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "Share via"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
