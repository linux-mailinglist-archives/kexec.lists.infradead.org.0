Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794871C1074
	for <lists+kexec@lfdr.de>; Fri,  1 May 2020 11:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDtnP7ERPXEolSAjSPp+lZruWsv6ckoRP8cbZJ+pwE8=; b=UZJmfNlMAQceuE
	BlJfZ/5UiCIHfy9Wu8qw/Ot/rnGAOH8ONVxuscwPJJe7UdrJ270NKcCjiWSNnYZIlU90lVBnPRViC
	BLofFBeALOdaPAEuzK4jwesGmsYEAEs+og+1l9okmBiFeCH5KZZYo39w7FJ5w2nH3UmU3yWq+6C/m
	vHQ3n7z0x0vc8xauTv/GvjTY5pXbk49Mv+OFxBuTPAiqqE04M0y7QEfSfMOqEqrtLbXPK7XGEgunz
	Vvnw0ymU/JLJ5elKsR5ukFZ6BKIhph90mxvlx6zGShbUBYr4Uvfo/w0mEPOGBJ7DDqNoxIzHxT+ym
	r8IKm1canCQGxZZFl18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSA3-0007iU-HW; Fri, 01 May 2020 09:40:47 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUS9z-0007gz-KX
 for kexec@lists.infradead.org; Fri, 01 May 2020 09:40:45 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jUS9l-00038k-HG; Fri, 01 May 2020 11:40:29 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: [PATCH v2 1/3] crash: add VMCOREINFO macro for anonymous structs
Date: Fri,  1 May 2020 11:46:08 +0206
Message-Id: <20200501094010.17694-2-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501094010.17694-1-john.ogness@linutronix.de>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_024043_808782_87B1C157 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Some structs are not named and are only available via their typedef.
Add a VMCOREINFO macro to export field offsets for such structs.

Signed-off-by: John Ogness <john.ogness@linutronix.de>
---
 include/linux/crash_core.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index 525510a9f965..43b51c9df571 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -53,6 +53,9 @@ phys_addr_t paddr_vmcoreinfo_note(void);
 #define VMCOREINFO_OFFSET(name, field) \
 	vmcoreinfo_append_str("OFFSET(%s.%s)=%lu\n", #name, #field, \
 			      (unsigned long)offsetof(struct name, field))
+#define VMCOREINFO_TYPE_OFFSET(name, field) \
+	vmcoreinfo_append_str("OFFSET(%s.%s)=%lu\n", #name, #field, \
+			      (unsigned long)offsetof(name, field))
 #define VMCOREINFO_LENGTH(name, value) \
 	vmcoreinfo_append_str("LENGTH(%s)=%lu\n", #name, (unsigned long)value)
 #define VMCOREINFO_NUMBER(name) \
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
