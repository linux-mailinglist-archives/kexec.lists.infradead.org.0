Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725DF1F5B70
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 20:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gZutiz9x5JT/qtZZsftGmz6LW6xFJlAP1I5YnDp9LtM=; b=bJhSkJLmJA/WVo18dQQjHQkhx
	lYHIelchv/+57DB3h19qE45jWmvyq1Pvcc6/Mm7ohAJoePxaQ3CQmm5xk+C5fEgepbnPsq/dZVcIu
	bC544lospzBDgya8XlHDmd1Tjsg/R8h7lgBUD77PjaMo+GfLRPjgRKstC1PJwOHpeo8ZywQ2eYNHn
	czgAWDyQGje1+IS/dIByhwcn+Wp2QoZiVWjEqTuIBRJmb7jXPpIiquFiqB++W/OBQVnlhx1maFFdh
	xFnPCJh/a0RFm03QLbB77zOzw407XWEV/1YeOHCqhKR1K6Kx8KRpBhIrfqv8MLua5HiKwq75xqQn0
	BFTI6/riQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5ij-0006hM-Ib; Wed, 10 Jun 2020 18:45:05 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5if-00068T-1T
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 18:45:02 +0000
Received: from [192.168.0.108] (user-0c9haon.cable.mindspring.com
 [24.152.171.23])
 by linux.microsoft.com (Postfix) with ESMTPSA id 9257F20B717B;
 Wed, 10 Jun 2020 11:44:59 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9257F20B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1591814700;
 bh=WKPcY/e3jl/zV0ltgVNQfGIUBw/oHdJO0Awy+2fvE8M=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Lcdd7tGCJhmgp7muaHv6uG0OO3w6K85kRjqrKqOUeVD3fVVilaVXYghYC6rGgCwAy
 JihkItLdISoWKlD6CKXSDYOWate+QiVeh3rRBRex1f6MuXCvJO1xRktsyR8o5cOsbQ
 DTniZ414CBBBVsppS99m6RMCIp4wYFxS6LM2VXbI=
Subject: Re: [PATCH][RFC] kdump: append kernel build-id string to VMCOREINFO
To: Baoquan He <bhe@redhat.com>
References: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
 <20200610022027.GI20367@MiWiFi-R3L-srv>
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
Message-ID: <2a68e2ed-c937-8ef7-5eea-5fe825df3cc8@linux.microsoft.com>
Date: Wed, 10 Jun 2020 11:44:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610022027.GI20367@MiWiFi-R3L-srv>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_114501_185953_4F9BFA7F 
X-CRM114-Status: GOOD (  19.43  )
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Tyler Hicks <tyhicks@linux.microsoft.com>,
 Dave Young <dyoung@redhat.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thanks Baoquan.  See inline.

On 6/9/2020 7:20 PM, Baoquan He wrote:
> On 06/04/20 at 05:01pm, Vijay Balakrishna wrote:
>> Make kernel GNU build-id available in VMCOREINFO.  Having
>> build-id in VMCOREINFO facilitates presenting appropriate kernel
>> namelist image with debug information file to kernel crash dump
>> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
>> key for crash analysis automation.
> 
> Looks like a good idea. I have several concerns, please check below inline
> comments.
> 
>>
>> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
>> ---
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
>> dumps, shared libraries, loadable kernel modules etc.  This is an
>> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
>> some uniformity for automation tools.
> 
> These two paragraphs can be added to log too?
Sure, I will move it too commit log in my next version.

> 
>>
>>   include/linux/crash_core.h |  6 +++++
>>   kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
>>   2 files changed, 56 insertions(+)
>>
>> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
>> index 525510a9f965..6594dbc34a37 100644
>> --- a/include/linux/crash_core.h
>> +++ b/include/linux/crash_core.h
>> @@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>>   
>>   #define VMCOREINFO_OSRELEASE(value) \
>>   	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
>> +#define VMCOREINFO_BUILD_ID(value) \
>> +	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
>>   #define VMCOREINFO_PAGESIZE(value) \
>>   	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
>>   #define VMCOREINFO_SYMBOL(name) \
>> @@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
>>   extern size_t vmcoreinfo_size;
>>   extern u32 *vmcoreinfo_note;
>>   
>> +/* raw contents of kernel .notes section */
>> +extern const void __start_notes __weak;
>> +extern const void __stop_notes __weak;
>> +
>>   Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>>   			  void *data, size_t data_len);
>>   void final_note(Elf_Word *buf);
>> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
>> index 9f1557b98468..c094db478803 100644
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
> 
> Here, could you tell why we need two times the build id length?

GNU build-id is binary data, it is converted to hex (string) 
representation here.

> 
>> +	int n_remain = NOTES_SIZE;
>> +
>> +	while (n_remain >= sizeof(struct elf_note)) {
>> +		const struct elf_note_section *g_build_id =
> 
> Here naming of 'g_build_id' looks a little weird. We usually define
> global variable with 'g_xxxx'. Maybe we can change it to 'note_sec' or
> something else, because not all iterated elf_note_section is build_id
> related.

I will rename it in next version.

Vijay
> 
>> +			&__start_notes + NOTES_SIZE - n_remain;
>> +		const u32 n_namesz = g_build_id->n_hdr.n_namesz;
>> +
>> +		if (g_build_id->n_hdr.n_type == NT_GNU_BUILD_ID &&
>> +		    n_namesz != 0 &&
>> +		    !strcmp((char *)&g_build_id->n_data[0], "GNU")) {
>> +			if (g_build_id->n_hdr.n_descsz <= BUILD_ID_MAX) {
>> +				const u32 n_descsz = g_build_id->n_hdr.n_descsz;
>> +				const u8 *s = &g_build_id->n_data[n_namesz];
>> +
>> +				s = PTR_ALIGN(s, 4);
>> +				bin2hex(build_id, s, n_descsz);
>> +				build_id[2 * n_descsz] = '\0';
>> +				VMCOREINFO_BUILD_ID(build_id);
>> +				return;
>> +			}
>> +			pr_warn("Build ID is too large to include in vmcoreinfo: %lu > %lu\n",
>> +				g_build_id->n_hdr.n_descsz,
>> +				BUILD_ID_MAX);
>> +			return;
>> +		}
>> +		n_remain -= sizeof(struct elf_note) +
>> +			ALIGN(g_build_id->n_hdr.n_namesz, 4) +
>> +			ALIGN(g_build_id->n_hdr.n_descsz, 4);
>> +	}
>> +}
>> +
>>   static int __init crash_save_vmcoreinfo_init(void)
>>   {
>>   	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
>> @@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>>   	}
>>   
>>   	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
>> +	add_build_id_vmcoreinfo();
>>   	VMCOREINFO_PAGESIZE(PAGE_SIZE);
>>   
>>   	VMCOREINFO_SYMBOL(init_uts_ns);
>> -- 
>> 2.26.2
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/kexec
>>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
