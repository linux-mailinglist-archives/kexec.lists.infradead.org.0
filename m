Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6AC1FD806
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 23:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p0qJPVVrWKqzCCcjM16yhpJ6M1nMLcViIHlpr6tJNe4=; b=K8gmxVliWRkZS8yEu9XsXYHwP
	hxGLPaPqhnSSSBcaqC88r2AKH/ZvPNykgNOqWnl16bVgsrE+OeaBW9h/f1sbgEslO/Vee5bj8eNS7
	odbzwY4JJ0ghj3pjRyTsRjlYpyR+uZpZMIyKeKibpE3uaoNJWwf6Wd8De3+a3Ab0dYx7Vq+To6ytE
	bhU0AuxithJD3esaBoP0udUM8mePQtKrsOAGCifFT28FjN5G95KPHvCZQzQ1OssEZ7G43bKI7kjIK
	TQ6bYDWvyiWbX9YFiATOS0udChA5r9oG7xfzNH8FxcSn9oZQ2gkn33oTIvZwNZk8qP7QCF7OherDj
	d0RALO3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlg5o-0000hu-Lu; Wed, 17 Jun 2020 21:59:36 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlg5k-0000gm-PY
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 21:59:34 +0000
Received: from [192.168.0.109] (unknown [209.134.121.133])
 by linux.microsoft.com (Postfix) with ESMTPSA id 4675820B7192;
 Wed, 17 Jun 2020 14:59:26 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 4675820B7192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1592431166;
 bh=vXF/AK+HilS0mky+64QCLgW+nVTkEVVzDGGQtIvSA+k=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fPMTh8hFAAiXhQEKxLk0gac9P0G2gGX9W7+19fPNzepTEKB5ul0CZtVePLCz2qivx
 9Uge20dlFk81QI3MAeJmcOmbf1CFsLG3rGAHonTQEpms840tNubH4Apx1nW2zHB1Z3
 F7vJJT2kApaZzaqhvaHwWwGBQLwJamdv4txpv7y8=
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to VMCOREINFO
To: Andrew Morton <akpm@linux-foundation.org>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
 <20200617124531.753b42152682219f267b75a1@linux-foundation.org>
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
Message-ID: <4bf02b0f-fc24-eb28-cf5c-419e7161f707@linux.microsoft.com>
Date: Wed, 17 Jun 2020 14:59:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617124531.753b42152682219f267b75a1@linux-foundation.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_145932_881819_A58D89EB 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Baoquan He <bhe@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Tyler Hicks <tyhicks@linux.microsoft.com>, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thanks Andrew.  See inline.

On 6/17/2020 12:45 PM, Andrew Morton wrote:
> On Wed, 10 Jun 2020 21:27:52 -0700 Vijay Balakrishna <vijayb@linux.microsoft.com> wrote:
> 
>> Make kernel GNU build-id available in VMCOREINFO.  Having
>> build-id in VMCOREINFO facilitates presenting appropriate kernel
>> namelist image with debug information file to kernel crash dump
>> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
>> key for crash analysis automation.
>>
>> Regarding if this patch is necessary or matching of linux_banner
>> and OSRELEASE in VMCOREINFO employed by crash(8) meets the
>> need -- IMO, build-id approach more foolproof, in most instances it
>> is a cryptographic hash generated using internal code/ELF bits unlike
>> kernel version string upon which linux_banner is based that is
>> external to the code.  I feel each is intended for a different purpose.
>> Also OSRELEASE is not suitable when two different kernel builds
>> from same version with different features enabled.
>>
>> Currently for most linux (and non-linux) systems build-id can be
>> extracted using standard methods for file types such as user mode crash
>> dumps, shared libraries, loadable kernel modules etc.,  This is an
>> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
>> some uniformity for automation tools.
>>
>> ...
>>
>> --- a/kernel/crash_core.c
>> +++ b/kernel/crash_core.c
>> @@ -11,6 +11,8 @@
>>   #include <asm/page.h>
>>   #include <asm/sections.h>
>>   
>> +#include <crypto/sha.h>
>> +
>>   /* vmcoreinfo stuff */
>>   unsigned char *vmcoreinfo_data;
>>   size_t vmcoreinfo_size;
>> @@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
>>   }
>>   EXPORT_SYMBOL(paddr_vmcoreinfo_note);
>>   
>> +#define NOTES_SIZE (&__stop_notes - &__start_notes)
>> +#define BUILD_ID_MAX SHA1_DIGEST_SIZE
>> +#define NT_GNU_BUILD_ID 3
>> +
>> +struct elf_note_section {
>> +	struct elf_note	n_hdr;
>> +	u8 n_data[];
>> +};
>> +
>> +/*
>> + * Add build ID from .notes section as generated by the GNU ld(1)
>> + * or LLVM lld(1) --build-id option.
>> + */
>> +static void add_build_id_vmcoreinfo(void)
>> +{
>> +	char build_id[BUILD_ID_MAX * 2 + 1];
>> +	int n_remain = NOTES_SIZE;
>> +
>> +	while (n_remain >= sizeof(struct elf_note)) {
>> +		const struct elf_note_section *note_sec =
>> +			&__start_notes + NOTES_SIZE - n_remain;
>> +		const u32 n_namesz = note_sec->n_hdr.n_namesz;
>> +
>> +		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
>> +		    n_namesz != 0 &&
>> +		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {
> 
> Is it guaranteed that n_data[] is null-terminated?

 From ELF(5) "Notes (Nhdr)" section:

>        n_namesz  The length of the name field in bytes.  The contents will immediately follow this note in memory.  The name is null  terminated.   For
>                  example, if the name is "GNU", then n_namesz will be set to 4.

Vijay

> 
>> +			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
>> +				const u32 n_descsz = note_sec->n_hdr.n_descsz;
>> +				const u8 *s = &note_sec->n_data[n_namesz];
>> +
>> +				s = PTR_ALIGN(s, 4);
>> +				bin2hex(build_id, s, n_descsz);
>> +				build_id[2 * n_descsz] = '\0';
>> +				VMCOREINFO_BUILD_ID(build_id);
>> +				return;
>> +			}
>> +			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
>> +				note_sec->n_hdr.n_descsz,
>> +				BUILD_ID_MAX);
>> +			return;
>> +		}
>> +		n_remain -= sizeof(struct elf_note) +
>> +			ALIGN(note_sec->n_hdr.n_namesz, 4) +
>> +			ALIGN(note_sec->n_hdr.n_descsz, 4);
>> +	}
>> +}
>> +
>>   static int __init crash_save_vmcoreinfo_init(void)
>>   {
>>   	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
