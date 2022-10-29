.class final Lcom/google/android/gms/internal/zzgz$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqd:Lcom/google/android/gms/internal/zzgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgz$1;->zzbqd:Lcom/google/android/gms/internal/zzgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .prologue
    const-wide/16 v6, -0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz$1;->zzbqd:Lcom/google/android/gms/internal/zzgz;

    .line 1000
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgz;->zzbpy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "eventLocation"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgz;->zzbqc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "description"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgz;->zzbqb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzgz;->zzbpz:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_38

    const-string/jumbo v2, "beginTime"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzgz;->zzbpz:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_38
    iget-wide v2, v0, Lcom/google/android/gms/internal/zzgz;->zzbqa:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_46

    const-string/jumbo v2, "endTime"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzgz;->zzbqa:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_46
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz$1;->zzbqd:Lcom/google/android/gms/internal/zzgz;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzgz;->mContext:Landroid/content/Context;

    .line 0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
