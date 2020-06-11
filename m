Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C871F60FB
	for <lists+kexec@lfdr.de>; Thu, 11 Jun 2020 06:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=P1ji8tMKv4yCv/SBadQoRiWijQEEM4xTPrYmzlVIs+4=; b=Cmo
	4ioJPtJND6S/oKGMQPw+rhw6VKH08RMO5BbJvR/uR2/wsM5q3iSKouzJX+y1OMQEtiJJSw+6+k8bs
	g4nw214zaWP+7mcFgGIdWJu4LESaJ2/oSpNrOhKqzxtW/1N63H4kCS3V+cedlAHgEFRSZN3CAf2sy
	+vts6drFB9lSmMQLQVRWHrmTvGMYBOfstlT+/UWlipMyVb7hE8stHQ5v4LD71JqkVRLw/7uHi5p+V
	pxjyvBMIn8WP2GHc80Yet0LUscLEAmC7YLDb5GBVuh9eePZVOobuguAWGYIlxcwgIdlvWnxc+9Vma
	0yBNM286F8CJuZ+VZv6GSMLBaFn9uKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjEov-0000AR-Gc; Thu, 11 Jun 2020 04:28:05 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjEos-000076-1g
 for kexec@lists.infradead.org; Thu, 11 Jun 2020 04:28:03 +0000
Received: from
 linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net
 (linux.microsoft.com [13.77.154.182])
 by linux.microsoft.com (Postfix) with ESMTPSA id 7C40E20B4778;
 Wed, 10 Jun 2020 21:28:00 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 7C40E20B4778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1591849680;
 bh=Rqj0PR+NrzTyHr6jbTe+YqJeUIzjprQ19xAuqb8Gon0=;
 h=From:To:Cc:Subject:Date:From;
 b=eY8LDytRUY6ueet/V33x1QnLu9Wb4g+LRFvSUFTOqLk49ZWNpyvZwr6lqHLFWdKgW
 Sv18O0I0/dLH3ahaQrkiH43Hj2CeJA89Zr/S3bYmE7WGa6Q94BZkmDbsSqIvse7Cxs
 sOL3wmR+fbEuWKrsXtbNKxHf0uagG1Y59DiwmoKY=
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
To: Dave Young <dyoung@redhat.com>,
	Baoquan He <bhe@redhat.com>
Subject: [PATCH v2][RFC] kdump: append kernel build-id string to VMCOREINFO
Date: Wed, 10 Jun 2020 21:27:52 -0700
Message-Id: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_212802_191406_98E260A6 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: clang-built-linux@googlegroups.com,
 Tyler Hicks <tyhicks@linux.microsoft.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Make kernel GNU build-id available in VMCOREINFO.  Having
build-id in VMCOREINFO facilitates presenting appropriate kernel
namelist image with debug information file to kernel crash dump
analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
key for crash analysis automation.

Regarding if this patch is necessary or matching of linux_banner
and OSRELEASE in VMCOREINFO employed by crash(8) meets the
need -- IMO, build-id approach more foolproof, in most instances it
is a cryptographic hash generated using internal code/ELF bits unlike
kernel version string upon which linux_banner is based that is
external to the code.  I feel each is intended for a different purpose.
Also OSRELEASE is not suitable when two different kernel builds
from same version with different features enabled.

Currently for most linux (and non-linux) systems build-id can be
extracted using standard methods for file types such as user mode crash
dumps, shared libraries, loadable kernel modules etc.,  This is an
exception for linux kernel dump.  Having build-id in VMCOREINFO brings
some uniformity for automation tools.

Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
---
Changes since v2:
-----------------
- v1 was sent out as a single patch which can be seen here:
  http://lists.infradead.org/pipermail/kexec/2020-June/025202.html
- moved justification to commit commit log
- renamed 'g_build_id' to 'note_sec'
- fixed format specifier in pr_warn() from '%lu' to '%u' (failed to
  catch warning in v1)

 include/linux/crash_core.h |  6 +++++
 kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index 525510a9f965..6594dbc34a37 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
 
 #define VMCOREINFO_OSRELEASE(value) \
 	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
+#define VMCOREINFO_BUILD_ID(value) \
+	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
 #define VMCOREINFO_PAGESIZE(value) \
 	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
 #define VMCOREINFO_SYMBOL(name) \
@@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
 extern size_t vmcoreinfo_size;
 extern u32 *vmcoreinfo_note;
 
+/* raw contents of kernel .notes section */
+extern const void __start_notes __weak;
+extern const void __stop_notes __weak;
+
 Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
 			  void *data, size_t data_len);
 void final_note(Elf_Word *buf);
diff --git a/kernel/crash_core.c b/kernel/crash_core.c
index 9f1557b98468..64ac359cd17e 100644
--- a/kernel/crash_core.c
+++ b/kernel/crash_core.c
@@ -11,6 +11,8 @@
 #include <asm/page.h>
 #include <asm/sections.h>
 
+#include <crypto/sha.h>
+
 /* vmcoreinfo stuff */
 unsigned char *vmcoreinfo_data;
 size_t vmcoreinfo_size;
@@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
 }
 EXPORT_SYMBOL(paddr_vmcoreinfo_note);
 
+#define NOTES_SIZE (&__stop_notes - &__start_notes)
+#define BUILD_ID_MAX SHA1_DIGEST_SIZE
+#define NT_GNU_BUILD_ID 3
+
+struct elf_note_section {
+	struct elf_note	n_hdr;
+	u8 n_data[];
+};
+
+/*
+ * Add build ID from .notes section as generated by the GNU ld(1)
+ * or LLVM lld(1) --build-id option.
+ */
+static void add_build_id_vmcoreinfo(void)
+{
+	char build_id[BUILD_ID_MAX * 2 + 1];
+	int n_remain = NOTES_SIZE;
+
+	while (n_remain >= sizeof(struct elf_note)) {
+		const struct elf_note_section *note_sec =
+			&__start_notes + NOTES_SIZE - n_remain;
+		const u32 n_namesz = note_sec->n_hdr.n_namesz;
+
+		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
+		    n_namesz != 0 &&
+		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {
+			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
+				const u32 n_descsz = note_sec->n_hdr.n_descsz;
+				const u8 *s = &note_sec->n_data[n_namesz];
+
+				s = PTR_ALIGN(s, 4);
+				bin2hex(build_id, s, n_descsz);
+				build_id[2 * n_descsz] = '\0';
+				VMCOREINFO_BUILD_ID(build_id);
+				return;
+			}
+			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
+				note_sec->n_hdr.n_descsz,
+				BUILD_ID_MAX);
+			return;
+		}
+		n_remain -= sizeof(struct elf_note) +
+			ALIGN(note_sec->n_hdr.n_namesz, 4) +
+			ALIGN(note_sec->n_hdr.n_descsz, 4);
+	}
+}
+
 static int __init crash_save_vmcoreinfo_init(void)
 {
 	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
@@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
 	}
 
 	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
+	add_build_id_vmcoreinfo();
 	VMCOREINFO_PAGESIZE(PAGE_SIZE);
 
 	VMCOREINFO_SYMBOL(init_uts_ns);
-- 
2.26.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
