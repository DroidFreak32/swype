.class public final Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
.super Lcom/bumptech/glide/load/data/LocalUriFetcher;
.source "StreamLocalUriFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/data/LocalUriFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 39
    sput-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#/display_photo"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/data/LocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Ljava/io/InputStream;

    .line 1058
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 21
    return-void
.end method

.method protected final bridge synthetic loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 21
    .line 2052
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2063
    packed-switch v0, :pswitch_data_30

    .line 2078
    :pswitch_a
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2085
    .end local p1    # "x0":Landroid/net/Uri;
    :goto_e
    return-object v0

    .line 2067
    .restart local p1    # "x0":Landroid/net/Uri;
    :pswitch_f
    if-ne v0, v2, :cond_20

    .line 2068
    invoke-static {p2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 2069
    .end local p1    # "x0":Landroid/net/Uri;
    if-nez p1, :cond_20

    .line 2070
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Contact cannot be found"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2b

    .line 2085
    invoke-static {p2, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_e

    .line 2087
    :cond_2b
    invoke-static {p2, p1, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_e

    .line 2063
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method
