.class public Lcom/google/api/services/gmail/GmailScopes;
.super Ljava/lang/Object;
.source "GmailScopes.java"


# static fields
.field public static final GMAIL_COMPOSE:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.compose"

.field public static final GMAIL_INSERT:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.insert"

.field public static final GMAIL_LABELS:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.labels"

.field public static final GMAIL_MODIFY:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.modify"

.field public static final GMAIL_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.readonly"

.field public static final GMAIL_SEND:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.send"

.field public static final GMAIL_SETTINGS_BASIC:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.settings.basic"

.field public static final GMAIL_SETTINGS_SHARING:Ljava/lang/String; = "https://www.googleapis.com/auth/gmail.settings.sharing"

.field public static final MAIL_GOOGLE_COM:Ljava/lang/String; = "https://mail.google.com/"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static all()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    const-string/jumbo v1, "https://mail.google.com/"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.compose"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.insert"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.labels"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.modify"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.readonly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.send"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.settings.basic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string/jumbo v1, "https://www.googleapis.com/auth/gmail.settings.sharing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
