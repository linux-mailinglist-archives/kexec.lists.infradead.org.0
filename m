Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C2B5E082
	for <lists+kexec@lfdr.de>; Wed,  3 Jul 2019 11:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAmK/BHavS+en5LL+JWWsC2lvA0vrtaNfIaXkGNAwAw=; b=eMdTvG/+06KeEQ
	D7kDTklNy8C3TAKNOvYGohYG7CXj4xfsQ/AICi/iKnvNBvCSbbzjQ4J4WXA5xVWT3Msx8tUULGem7
	Ri6aabZbZMO7lnYdFHkWwTilZUOtQW2W2BEdD0TLcqeCWH3hARV0RXqc82+8gTz/Ek99mDe6n5lY1
	1x2QiDZay/N7FgKGdfoaVBll4p9PRbnwVpS+gsdCzdTrfgf9r/qNAAQviCrjWcMegL52v1Z61479C
	34XGH1JtppTkA6qbV/9OVnAq9lk5IUxLwlMgxS31aDoP47rCQZa2g3vj1Z2hPFR6MNwwG8ghWep1T
	q0G07BSRlZ+wghh8AXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibFf-00007i-MY; Wed, 03 Jul 2019 09:08:31 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibFa-00006v-R3
 for kexec@lists.infradead.org; Wed, 03 Jul 2019 09:08:28 +0000
Received: by mail-io1-f67.google.com with SMTP id e5so3037933iok.4
 for <kexec@lists.infradead.org>; Wed, 03 Jul 2019 02:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WFkZ4Msb0kz89U6c3rkBDCrF/2U8Lm9LiypDRxx8FOY=;
 b=q0iEcpNzln+ICAnancmTCPvYk+PN1EPXHj8CuM9NoYMajwlKDvsiJq5Vl0BfDYK4Br
 tDv+oWbq0zTRebca8Qudh78oSNLVXGkLne3UpCmnOxTDjqBKaJjiryxynmg0stg6anuH
 lwpN2nJpe1JiTn4QY+DSysG8z8TiJLTgKzxG3fIDg8G6SmZ7aoFjV5T6XsKY2Ws9yWhP
 MqjImDeBT4OhUAJWTm+5nsjSX/uYMbkvuQ7EdMFMOQcGPTviSvEfnmxDYgOMFvaiNVlJ
 YU4+sAIjRCHnI1MA1W9blZbDrpfkXyVTZXnamQscectehVptkunQ3NjoaFJT0skYU99/
 1kGw==
X-Gm-Message-State: APjAAAVns3yk8JgEHVbF5TUqovUKa7m4xO+KxPUf1zkQ942b55i0PuP5
 QiN0RKcQuCygWjn2jroJa6HvrXrCKOeEUbkbe8Xyng==
X-Google-Smtp-Source: APXvYqyz1VOg1lThrDRSzdPcDmfAEN9GzDTSxh40hxtCjGxPqvrb7K0Gbv12l+mfq0xZ6Dpw9h6eyZ8xARGzM7WwAGk=
X-Received: by 2002:a6b:c38b:: with SMTP id t133mr6581973iof.162.1562144905678; 
 Wed, 03 Jul 2019 02:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190703080432.28806-1-horms@verge.net.au>
 <20190703083434.GA7897@localhost.localdomain>
In-Reply-To: <20190703083434.GA7897@localhost.localdomain>
From: Kairui Song <kasong@redhat.com>
Date: Wed, 3 Jul 2019 17:08:14 +0800
Message-ID: <CACPcB9fAuzRLhXKB1UhW3vJNaAUq0UwRXHYDYb7MrEbXazq_qg@mail.gmail.com>
Subject: Re: [PATCH kexec-tools] x86: re-order includes to avoid duplicate
 struct e820entry
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_020826_879069_696C651F 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 4:34 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 07/03/19 at 10:04am, Simon Horman wrote:
> > xenctrl.h defines struct e820entry as:
> >
> >       if defined(__i386__) || defined(__x86_64__)
> >       ...
> >       #define E820_RAM        1
> >       ...
> >       struct e820entry {
> >               uint64_t addr;
> >               uint64_t size;
> >               uint32_t type;
> >       } __attribute__((packed));
> >       ...
> >       #endif
> >
> >  $ dpkg-query -S /usr/include/xenctrl.h
> >  libxen-dev:amd64: /usr/include/xenctrl.h
> >  $  dpkg-query -W libxen-dev:amd64
> >  libxen-dev:amd64     4.8.5+shim4.10.2+xsa282-1+deb9u11
> >
> > ./include/x86/x86-linux.h defines struct e820entry as:
> >
> >       #ifndef E820_RAM
> >       struct e820entry {
> >               uint64_t addr;  /* start of memory segment */
> >               uint64_t size;  /* size of memory segment */
> >               uint32_t type;  /* type of memory segment */
> >               #define E820_RAM    1
> >               ...
> >       } __attribute__((packed));
> >       #endif
> >
> > Since cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
> > ./kexec/arch/i386/kexec-x86-common.c includes
> >
> >       +#include "x86-linux-setup.h"
> >        #include "../../kexec-xen.h"
>
> Not sure if those get rsdp code can go to x86-linux-setup.c then no need
> the including.
>
> Let's see if Kairui has some thoughts.
>

Yes, move the helper to x86-linux-setup.c should fix it too. So
following patch should also be able to fix it:

---
 kexec/arch/i386/kexec-x86-common.c | 45 ------------------------------
 kexec/arch/i386/kexec-x86.h        |  1 -
 kexec/arch/i386/x86-linux-setup.c  | 43 ++++++++++++++++++++++++++++
 kexec/arch/i386/x86-linux-setup.h  |  2 +-
 4 files changed, 44 insertions(+), 47 deletions(-)

diff --git a/kexec/arch/i386/kexec-x86-common.c
b/kexec/arch/i386/kexec-x86-common.c
index 5c55ec8..63a2823 100644
--- a/kexec/arch/i386/kexec-x86-common.c
+++ b/kexec/arch/i386/kexec-x86-common.c
@@ -39,7 +39,6 @@
 #include "../../firmware_memmap.h"
 #include "../../crashdump.h"
 #include "kexec-x86.h"
-#include "x86-linux-setup.h"
 #include "../../kexec-xen.h"

 /* Used below but not present in (older?) xenctrl.h */
@@ -392,47 +391,3 @@ int get_memory_ranges(struct memory_range
**range, int *ranges,

  return ret;
 }
-
-static uint64_t bootparam_get_acpi_rsdp(void) {
- uint64_t acpi_rsdp = 0;
- off_t offset = offsetof(struct x86_linux_param_header, acpi_rsdp_addr);
-
- if (get_bootparam(&acpi_rsdp, offset, sizeof(acpi_rsdp)))
- return 0;
-
- return acpi_rsdp;
-}
-
-static uint64_t efi_get_acpi_rsdp(void) {
- FILE *fp;
- char line[MAX_LINE], *s;
- uint64_t acpi_rsdp = 0;
-
- fp = fopen("/sys/firmware/efi/systab", "r");
- if (!fp)
- return acpi_rsdp;
-
- while(fgets(line, sizeof(line), fp) != 0) {
- /* ACPI20= always goes before ACPI= */
- if ((strstr(line, "ACPI20=")) || (strstr(line, "ACPI="))) {
- s = strchr(line, '=') + 1;
- sscanf(s, "0x%lx", &acpi_rsdp);
- break;
- }
- }
- fclose(fp);
-
- return acpi_rsdp;
-}
-
-uint64_t get_acpi_rsdp(void)
-{
- uint64_t acpi_rsdp = 0;
-
- acpi_rsdp = bootparam_get_acpi_rsdp();
-
- if (!acpi_rsdp)
- acpi_rsdp = efi_get_acpi_rsdp();
-
- return acpi_rsdp;
-}
diff --git a/kexec/arch/i386/kexec-x86.h b/kexec/arch/i386/kexec-x86.h
index 1b58c3b..c2bcd37 100644
--- a/kexec/arch/i386/kexec-x86.h
+++ b/kexec/arch/i386/kexec-x86.h
@@ -86,5 +86,4 @@ int nbi_load(int argc, char **argv, const char *buf,
off_t len,
 void nbi_usage(void);

 extern unsigned xen_e820_to_kexec_type(uint32_t type);
-extern uint64_t get_acpi_rsdp(void);
 #endif /* KEXEC_X86_H */
diff --git a/kexec/arch/i386/x86-linux-setup.c
b/kexec/arch/i386/x86-linux-setup.c
index 057ee14..588b1f4 100644
--- a/kexec/arch/i386/x86-linux-setup.c
+++ b/kexec/arch/i386/x86-linux-setup.c
@@ -846,6 +846,49 @@ out:
  return;
 }

+static uint64_t bootparam_get_acpi_rsdp(void) {
+ uint64_t acpi_rsdp = 0;
+ off_t offset = offsetof(struct x86_linux_param_header, acpi_rsdp_addr);
+
+ if (get_bootparam(&acpi_rsdp, offset, sizeof(acpi_rsdp)))
+ return 0;
+
+ return acpi_rsdp;
+}
+
+static uint64_t efi_get_acpi_rsdp(void) {
+ FILE *fp;
+ char line[MAX_LINE], *s;
+ uint64_t acpi_rsdp = 0;
+
+ fp = fopen("/sys/firmware/efi/systab", "r");
+ if (!fp)
+ return acpi_rsdp;
+
+ while(fgets(line, sizeof(line), fp) != 0) {
+ /* ACPI20= always goes before ACPI= */
+ if ((strstr(line, "ACPI20=")) || (strstr(line, "ACPI="))) {
+ s = strchr(line, '=') + 1;
+ sscanf(s, "0x%lx", &acpi_rsdp);
+ break;
+ }
+ }
+ fclose(fp);
+
+ return acpi_rsdp;
+}
+
+uint64_t get_acpi_rsdp(void)
+{
+ uint64_t acpi_rsdp = 0;
+
+ acpi_rsdp = bootparam_get_acpi_rsdp();
+
+ if (!acpi_rsdp)
+ acpi_rsdp = efi_get_acpi_rsdp();
+
+ return acpi_rsdp;
+}
 void setup_linux_system_parameters(struct kexec_info *info,
     struct x86_linux_param_header *real_mode)
 {
diff --git a/kexec/arch/i386/x86-linux-setup.h
b/kexec/arch/i386/x86-linux-setup.h
index 0c651e5..1e81805 100644
--- a/kexec/arch/i386/x86-linux-setup.h
+++ b/kexec/arch/i386/x86-linux-setup.h
@@ -22,7 +22,7 @@ static inline void setup_linux_bootloader_parameters(
 void setup_linux_system_parameters(struct kexec_info *info,
  struct x86_linux_param_header *real_mode);
 int get_bootparam(void *buf, off_t offset, size_t size);
-
+uint64_t get_acpi_rsdp(void);

 #define SETUP_BASE    0x90000
 #define KERN32_BASE  0x100000 /* 1MB */
-- 
2.21.0

Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
