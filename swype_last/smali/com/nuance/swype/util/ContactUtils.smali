.class public final Lcom/nuance/swype/util/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;
    }
.end annotation


# static fields
.field private static contactName:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mContext:Landroid/content/Context;

.field private static queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

.field private static wordSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string/jumbo v0, "ContactUtils"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 26
    .line 1067
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_56

    .line 1071
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    .line 1076
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1078
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "display_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_56

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1083
    const-string/jumbo v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1084
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_57

    .line 1085
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1087
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_56
    :goto_56
    return-object v2

    .line 1089
    :cond_57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_56
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202$6263c3eb()Landroid/content/Context;
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402$16915f7f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 26
    .line 1097
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p0, :cond_8

    .line 1114
    :cond_7
    :goto_7
    return-void

    .line 1101
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1106
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1107
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/nuance/swype/input/R$string;->call:I

    .line 1108
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget v2, Lcom/nuance/swype/input/R$string;->message:I

    .line 1109
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget v3, Lcom/nuance/swype/input/R$string;->remove_button:I

    .line 1110
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1112
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_7

    .line 1116
    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4e

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1120
    :cond_4e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1122
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1123
    new-instance v3, Lcom/nuance/swype/util/ContactUtils$1;

    invoke-direct {v3}, Lcom/nuance/swype/util/ContactUtils$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1132
    new-instance v3, Lcom/nuance/swype/util/ContactUtils$2;

    invoke-direct {v3, p2, p0, v0, p1}, Lcom/nuance/swype/util/ContactUtils$2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/IME;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1177
    iget-object v1, v0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 1178
    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 26
    sget v0, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    return v0
.end method

.method static synthetic access$602$134621()I
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    return v0
.end method

.method static synthetic access$700()V
    .registers 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    .line 26
    return-void
.end method

.method public static cancelQueryTask()V
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    if-eqz v0, :cond_a

    .line 56
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->cancel(Z)Z

    .line 58
    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    .line 59
    return-void
.end method

.method public static getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wdSource"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    sput-object p0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    .line 46
    sput-object p1, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    .line 47
    sput p2, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    .line 48
    if-eqz p1, :cond_18

    .line 49
    new-instance v0, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    invoke-direct {v0, v2}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;-><init>(B)V

    .line 50
    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    :cond_18
    return-void
.end method
