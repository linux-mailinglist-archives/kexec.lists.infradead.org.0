Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134B41FCDC8
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 14:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoF4MWMPeQe4WHsj3tGdlpJMFF5gjbLFPZRq+jTX0Ew=; b=isM0WEN5w+HqCD
	nAKMfjdnGpyNWs+i5MxzKi1ZV+c+HNhR4AS3uw24vq/ZPAX1eEWcHl+P4t4gAZGAjDJmceYeIHpgm
	HHSl891qZfQpJdC2kDgMM8j1NZLxO4PjfQJF74/dXFwWqxGhEhMVho4lMZS8kkEnHXXKHt1HxTPEM
	lEceCWlZqoe5LaC8w4Ab1LCVKko0CfdWAdDHukCh9Navfk+Gw2G6Hj7EciOSbrsNUy3YMFxOPSrbQ
	R68rspRVuT60/i924NFnixna6mN3tgMTaoWT1Ehnv6uf1hJT3b3bK5aokFl8ggOWiqGZw2WC6JX+U
	N2W+srYBBa7OTJ+1sV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXZH-0000Zw-PU; Wed, 17 Jun 2020 12:53:27 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXZE-0000ZN-Me
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 12:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592398401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KxCeYadAkFpPRADG1byhTHsQXA/LoDiyjbaXWD8Erw8=;
 b=bohU+IcHL3l4s36ADL9JobKD+dYB9lWFUQ1hSCu+1vVgYBOamFFyTCC7B0PKzUn+z3QQfD
 feKdL/9WNMMa2WoGg/2gKNMya06GbPHIPw6UXoVNDofToKJ+1twTpnCQLcNNTSka1IV/BJ
 Z9yS5EXoPSz1EI3w7GKiLlGJcGP+dIY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-tOj98EPZN2GPmvXFDqvOgA-1; Wed, 17 Jun 2020 08:53:14 -0400
X-MC-Unique: tOj98EPZN2GPmvXFDqvOgA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47F511010888;
 Wed, 17 Jun 2020 12:53:13 +0000 (UTC)
Received: from localhost (ovpn-12-37.pek2.redhat.com [10.72.12.37])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 755175D9E4;
 Wed, 17 Jun 2020 12:53:07 +0000 (UTC)
Date: Wed, 17 Jun 2020 20:53:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>, akpm@linux-foundation.org
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to VMCOREINFO
Message-ID: <20200617125304.GR20367@MiWiFi-R3L-srv>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_055324_814008_56067159 
X-CRM114-Status: GOOD (  23.12  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 06/10/20 at 09:27pm, Vijay Balakrishna wrote:
> Make kernel GNU build-id available in VMCOREINFO.  Having
> build-id in VMCOREINFO facilitates presenting appropriate kernel
> namelist image with debug information file to kernel crash dump
> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
> key for crash analysis automation.
> 
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
> dumps, shared libraries, loadable kernel modules etc.,  This is an
> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
> some uniformity for automation tools.
> 
> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>

Looks good to me, thanks.

Acked-by: Baoquan He <bhe@redhat.com>

> ---
> Changes since v2:
> -----------------
> - v1 was sent out as a single patch which can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2020-June/025202.html
> - moved justification to commit commit log
> - renamed 'g_build_id' to 'note_sec'
> - fixed format specifier in pr_warn() from '%lu' to '%u' (failed to
>   catch warning in v1)
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
> index 9f1557b98468..64ac359cd17e 100644
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
> +	int n_remain = NOTES_SIZE;
> +
> +	while (n_remain >= sizeof(struct elf_note)) {
> +		const struct elf_note_section *note_sec =
> +			&__start_notes + NOTES_SIZE - n_remain;
> +		const u32 n_namesz = note_sec->n_hdr.n_namesz;
> +
> +		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
> +		    n_namesz != 0 &&
> +		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {
> +			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
> +				const u32 n_descsz = note_sec->n_hdr.n_descsz;
> +				const u8 *s = &note_sec->n_data[n_namesz];
> +
> +				s = PTR_ALIGN(s, 4);
> +				bin2hex(build_id, s, n_descsz);
> +				build_id[2 * n_descsz] = '\0';
> +				VMCOREINFO_BUILD_ID(build_id);
> +				return;
> +			}
> +			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
> +				note_sec->n_hdr.n_descsz,
> +				BUILD_ID_MAX);
> +			return;
> +		}
> +		n_remain -= sizeof(struct elf_note) +
> +			ALIGN(note_sec->n_hdr.n_namesz, 4) +
> +			ALIGN(note_sec->n_hdr.n_descsz, 4);
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
