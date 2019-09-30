Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE81C1EC1
	for <lists+kexec@lfdr.de>; Mon, 30 Sep 2019 12:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjRYoqzNTBRxsJ7Z92ReRoeZOLpAUCteWMP8WlJrE/4=; b=aq3T0AFhR0w09d
	TBZus/GuY7XYELqHy/ODwNyURksJK94QtOjIQ9YjsB5aLA1Sy4AguuO8TcXz1qzn5P94mHX0uwXTT
	2Hmwm5PQtraFQVTAuVR3GqYvdVY29DU4FPNGmvCrZVZxrWLmCI4Ed7xTC8ZaD/DJSXtcw2GL5aGNw
	FI4VEwCUzgMDUIT7CIwZ/LSdq78JohWofB56AkmTZpRd41vRWm42Z/FVcgqFgWTADQEiF5uFqct/a
	SzX/jRCHHwNFm8sKObGJNLeznoOHbLO0Wxttv3h59NSX1Z7XDVcXOr8uTf5++NIk9htgXtOkqIiHp
	p5HJgoUsi5x9mdiEXhYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEsiH-0002BN-AU; Mon, 30 Sep 2019 10:15:29 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEsiB-00013K-SQ
 for kexec@lists.infradead.org; Mon, 30 Sep 2019 10:15:25 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iEshl-0001TE-C1; Mon, 30 Sep 2019 04:14:57 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iEshk-0006yk-6u; Mon, 30 Sep 2019 04:14:56 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Baoquan He <bhe@redhat.com>
References: <20190920035326.27212-1-lijiang@redhat.com>
 <20190927051518.GA13023@dhcp-128-65.nay.redhat.com>
 <87r241piqg.fsf@x220.int.ebiederm.org>
 <20190928000505.GJ31919@MiWiFi-R3L-srv>
 <875zldp2vj.fsf@x220.int.ebiederm.org>
 <20190928030910.GA5774@MiWiFi-R3L-srv>
Date: Mon, 30 Sep 2019 05:14:16 -0500
In-Reply-To: <20190928030910.GA5774@MiWiFi-R3L-srv> (Baoquan He's message of
 "Sat, 28 Sep 2019 11:09:10 +0800")
Message-ID: <87zhimks5j.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iEshk-0006yk-6u; ; ; mid=<87zhimks5j.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18YFFLyA+N4FL6xpIsFa9lIvrY4S/ueRr0=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa02.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,T_XMDrugObfuBody_09,XMSubLong,XM_Body_Dirty_Words
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4998] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa02 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
 *  1.0 T_XMDrugObfuBody_09 obfuscated drug references
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
X-Spam-DCC: XMission; sa02 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Baoquan He <bhe@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 518 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 3.0 (0.6%), b_tie_ro: 2.1 (0.4%), parse: 1.11
 (0.2%), extract_message_metadata: 7 (1.3%), get_uri_detail_list: 4.3
 (0.8%), tests_pri_-1000: 3.1 (0.6%), tests_pri_-950: 1.08 (0.2%),
 tests_pri_-900: 0.91 (0.2%), tests_pri_-90: 31 (6.0%), check_bayes: 30
 (5.7%), b_tokenize: 9 (1.8%), b_tok_get_all: 12 (2.3%), b_comp_prob:
 3.2 (0.6%), b_tok_touch_all: 3.3 (0.6%), b_finish: 0.59 (0.1%),
 tests_pri_0: 457 (88.1%), check_dkim_signature: 0.42 (0.1%),
 check_dkim_adsp: 2.3 (0.5%), poll_dns_idle: 1.02 (0.2%), tests_pri_10:
 1.74 (0.3%), tests_pri_500: 5 (1.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] x86/kdump: Fix 'kmem -s' reported an invalid freepointer
 when SME was active
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_031523_959560_D5B78142 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Baoquan He <bhe@redhat.com> writes:

> On 09/27/19 at 09:32pm, Eric W. Biederman wrote:
>> Baoquan He <bhe@redhat.com> writes:
>> 
>> > On 09/27/19 at 03:49pm, Eric W. Biederman wrote:
>> >> Dave Young <dyoung@redhat.com> writes:
>> >> >> In order to avoid such problem, lets occupy the first 640k region when
>> >> >> SME is active, which will ensure that the allocated memory does not fall
>> >> >> into the first 640k area. So, no need to worry about whether kernel can
>> >> >> correctly copy the contents of the first 640K area to a backup region in
>> >> >> purgatory().
>> >> 
>> >> We must occupy part of the first 640k so that we can start up secondary
>> >> cpus unless someone has added another way to do that in recent years on
>> >> SME capable cpus.
>> >> 
>> >> Further there is Fimware/BIOS interaction that happens within those
>> >> first 640K.
>> >> 
>> >> Furthermore the kdump kernel needs to be able to read all of the memory
>> >> that the previous kernel could read.  Otherwise we can't get a crash
>> >> dump.
>> >> 
>> >> So I do not think ignoring the first 640K is the correct resolution
>> >> here.
>> >> 
>> >> > The log is too simple,  I know you did some other tries to fix this, but
>> >> > the patch log does not show why you can not correctly copy the 640k in
>> >> > current kdump code, in purgatory here.
>> >> >
>> >> > Also this patch seems works in your test, but still to see if other
>> >> > people can comment and see if it is safe or not, if any other risks
>> >> > other than waste the small chunk of memory.  If it is safe then kdump
>> >> > can just drop the backup logic and use this in common code instead of
>> >> > only do it for SME.
>> >> 
>> >> Exactly.
>> >> 
>> >> I think at best this avoids the symptoms, but does not give a reliable
>> >> crash dump.
>> >
>> > Sorry, didn't notice this comment at bottom.
>> >
>> > From code, currently the first 640K area is needed in two places.
>> > One is for 5-level trampoline during boot compressing stage, in
>> > find_trampoline_placement(). 
>> >
>> > The other is in reserve_real_mode(), as you mentioned, for application
>> > CPU booting.
>> >
>> > Only allow these two put data inside first 640K, then lock it done. It
>> > should not impact crash dump and parsing. And these two's content
>> > doesn't matter.
>> 
>> Do I understand correctly that the idea is that the kernel
>> that may crash will never touch these pages?  And that the reservation
>
> Thanks a lot for your comments, Eric.
>
> And yes. Except of the reserved real mode trampoline for secondary cpu if
> the trampoline is allocated in this area, it will be reused. We search area
> for real mode under 1M. Otherwise, the kernel that may crash will never
> touch these pages.
>
>> is not in the kernel that recovers from the crash?  That definitely
>
> You mean kdump kernel? Only the e820 reserved regions which are inserted
> into io_resource will be passed to kdump kernel, memblock reserved
> region is only seen by the present kernel.
>
> But for the content in first 640K, it's not erased, kdump kernel will
> ignore it and take it as a available memory resource into memory
> allocator.
>
>
>> needs a little better description.  I know it is not a lot on modern
>> systems but reserving an extra 1M of memory to avoid having to special
>> case it later seems in need of calling out.
>> 
>> I have an old system around that I think that 640K is about 25% of
>> memory.
>
> Understood. Basically 640K is wasted in this case. But we only do like
> this in SME case, a condition checking is added. And system with SME is
> pretty new model, it may not impact the old system.

The conditional really should be based on if we are reserving memory
for a kdump kernel.  AKA if crash_kernel=XXX is specified on the kernel
command line.

At which point I think it would be very reasonable to unconditionally
reserve the low 640k, and make the whole thing a non-issue.  This would
allow the kdump code to just not do anything special for any of the
weird special case.

It isn't perfect because we need a page or so used in the first kernel
for bootstrapping the secondary cpus, but that seems like the least of
evils.  Especially as no one will DMA to that memory.

So please let's just change what memory we reserve when crash_kernel is
specified.

>> How we interact with BIOS tables in the first 640k needs some
>> explanation.  Both in the first kernel and in the crash kernel.
>
> Yes, totally agree.
>
> Those BIOS tables have been reserved as e820 reserved regions and will
> be passed to kdump kernel for reusing. Memblock reserved 640K doesn't
> mean it will cover the whole [0, 640K) region, it only searches for
> available system RAM from memblock allocator.

Careful with that assumption.  My memory is that the e820 memory map
frequently fails to cover areas like the real mode interrupt descriptor
table at address 0.

Eric

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
