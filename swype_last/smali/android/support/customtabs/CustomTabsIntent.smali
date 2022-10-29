.class public final Landroid/support/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startAnimationBundle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 205
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;B)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
