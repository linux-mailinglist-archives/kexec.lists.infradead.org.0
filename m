Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E731F4B4D
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 04:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MBAIWOumRda+NPcqgnMcySfbPH1L4TE5EFk6OKEX44=; b=MEHUx/sCXr2jEC
	TpDBH0DVQbKtTKmVGpY9BcBQi+Oy8m61U3adCgV/NfvFHZ3sOBdfgu651regfwckYYaYe64S+YTBE
	mS7BGi4Glnv1NrXtLg1ilSKCUZ5nRg39VXhENBs5FS8KioQueWnDhAIPDoXWAXv3jIzDY6DvR7pe6
	eLCwlr2rujGh4/C24LD+ISL79AoEnA6yDNVd5UW9WhAGbF0XmbXsMsxHTF+ByTYKV/7nCAU+TjNEO
	Zv0/4w0oKWTEqwZuz4TY5L0MViTuz62+RKTUISD72O0pctGOXInNzU6FgMGSDDsN2GIYahJ6JnfrO
	jC0y5dmEseWxu+t4+1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqMA-0000nO-Eq; Wed, 10 Jun 2020 02:20:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqM7-0000mf-8x
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 02:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591755640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mNIvzhEAzVa8Lhlgg9l+HjpMaAfaiGPlfqtS4gB5XnM=;
 b=Q1Zc4Glv11q7e+YZB4cU2gsxXNU905P+KrdWLIRSfPq9MCTJDLrrxN6ngrwawSH9t2Foto
 KxNicL80oXkWnYZPU6xS9m7ahVWbu7gJ4I1kM05/sdjWFAjN0KSWRKqdXxk5xdWuypY1Hs
 WP5qXFLnCK8G9JqF+Kgn7nq32a5cVYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-_4iWAu3yPfK6P2WPfM0-uw-1; Tue, 09 Jun 2020 22:20:34 -0400
X-MC-Unique: _4iWAu3yPfK6P2WPfM0-uw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EA0F1005510;
 Wed, 10 Jun 2020 02:20:33 +0000 (UTC)
Received: from localhost (ovpn-12-95.pek2.redhat.com [10.72.12.95])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 276A05D9CD;
 Wed, 10 Jun 2020 02:20:29 +0000 (UTC)
Date: Wed, 10 Jun 2020 10:20:27 +0800
From: Baoquan He <bhe@redhat.com>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>
Subject: Re: [PATCH][RFC] kdump: append kernel build-id string to VMCOREINFO
Message-ID: <20200610022027.GI20367@MiWiFi-R3L-srv>
References: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192043_389746_7B2460AC 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Tyler Hicks <tyhicks@linux.microsoft.com>,
 Dave Young <dyoung@redhat.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/04/20 at 05:01pm, Vijay Balakrishna wrote:
> Make kernel GNU build-id available in VMCOREINFO.  Having
> build-id in VMCOREINFO facilitates presenting appropriate kernel
> namelist image with debug information file to kernel crash dump
> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
> key for crash analysis automation.

Looks like a good idea. I have several concerns, please check below inline
comments.

> 
> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
> ---
> Regarding if this patch is necessary or matching of linux_banner
> and OSRELEASE in VMCOREINFO employed by crash(8) meets the
> need -- IMO, build-id approach more foolproof, in most instances it
> is a cryptographic hash generated using internal code/ELF bits unlike
> kernel version string upon which linux_banner is based that is
> external to the code.  I feel each is intended for a different purpose.
> Also OSRELEASE is not suitable when two different kernel builds
> from same version with different features enabled.
> 
> Currently for most linux (and non-linux) systems build-id can be
> extracted using standard methods for file types such as user mode crash
> dumps, shared libraries, loadable kernel modules etc.  This is an
> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
> some uniformity for automation tools.

These two paragraphs can be added to log too?

> 
>  include/linux/crash_core.h |  6 +++++
>  kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
> index 525510a9f965..6594dbc34a37 100644
> --- a/include/linux/crash_core.h
> +++ b/include/linux/crash_core.h
> @@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>  
>  #define VMCOREINFO_OSRELEASE(value) \
>  	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
> +#define VMCOREINFO_BUILD_ID(value) \
> +	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
>  #define VMCOREINFO_PAGESIZE(value) \
>  	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
>  #define VMCOREINFO_SYMBOL(name) \
> @@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
>  extern size_t vmcoreinfo_size;
>  extern u32 *vmcoreinfo_note;
>  
> +/* raw contents of kernel .notes section */
> +extern const void __start_notes __weak;
> +extern const void __stop_notes __weak;
> +
>  Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>  			  void *data, size_t data_len);
>  void final_note(Elf_Word *buf);
> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> index 9f1557b98468..c094db478803 100644
> --- a/kernel/crash_core.c
> +++ b/kernel/crash_core.c
> @@ -11,6 +11,8 @@
>  #include <asm/page.h>
>  #include <asm/sections.h>
>  
> +#include <crypto/sha.h>
> +
>  /* vmcoreinfo stuff */
>  unsigned char *vmcoreinfo_data;
>  size_t vmcoreinfo_size;
> @@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
>  }
>  EXPORT_SYMBOL(paddr_vmcoreinfo_note);
>  
> +#define NOTES_SIZE (&__stop_notes - &__start_notes)
> +#define BUILD_ID_MAX SHA1_DIGEST_SIZE
> +#define NT_GNU_BUILD_ID 3
> +
> +struct elf_note_section {
> +	struct elf_note	n_hdr;
> +	u8 n_data[];
> +};
> +
> +/*
> + * Add build ID from .notes section as generated by the GNU ld(1)
> + * or LLVM lld(1) --build-id option.
> + */
> +static void add_build_id_vmcoreinfo(void)
> +{
> +	char build_id[BUILD_ID_MAX * 2 + 1];

Here, could you tell why we need two times the build id length?

> +	int n_remain = NOTES_SIZE;
> +
> +	while (n_remain >= sizeof(struct elf_note)) {
> +		const struct elf_note_section *g_build_id =

Here naming of 'g_build_id' looks a little weird. We usually define
global variable with 'g_xxxx'. Maybe we can change it to 'note_sec' or
something else, because not all iterated elf_note_section is build_id
related. 

> +			&__start_notes + NOTES_SIZE - n_remain;
> +		const u32 n_namesz = g_build_id->n_hdr.n_namesz;
> +
> +		if (g_build_id->n_hdr.n_type == NT_GNU_BUILD_ID &&
> +		    n_namesz != 0 &&
> +		    !strcmp((char *)&g_build_id->n_data[0], "GNU")) {
> +			if (g_build_id->n_hdr.n_descsz <= BUILD_ID_MAX) {
> +				const u32 n_descsz = g_build_id->n_hdr.n_descsz;
> +				const u8 *s = &g_build_id->n_data[n_namesz];
> +
> +				s = PTR_ALIGN(s, 4);
> +				bin2hex(build_id, s, n_descsz);
> +				build_id[2 * n_descsz] = '\0';
> +				VMCOREINFO_BUILD_ID(build_id);
> +				return;
> +			}
> +			pr_warn("Build ID is too large to include in vmcoreinfo: %lu > %lu\n",
> +				g_build_id->n_hdr.n_descsz,
> +				BUILD_ID_MAX);
> +			return;
> +		}
> +		n_remain -= sizeof(struct elf_note) +
> +			ALIGN(g_build_id->n_hdr.n_namesz, 4) +
> +			ALIGN(g_build_id->n_hdr.n_descsz, 4);
> +	}
> +}
> +
>  static int __init crash_save_vmcoreinfo_init(void)
>  {
>  	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
> @@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>  	}
>  
>  	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
> +	add_build_id_vmcoreinfo();
>  	VMCOREINFO_PAGESIZE(PAGE_SIZE);
>  
>  	VMCOREINFO_SYMBOL(init_uts_ns);
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
