Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4348144232
	for <lists+kexec@lfdr.de>; Tue, 21 Jan 2020 17:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qph2cHx1F+d9R951O1Dyg03mCW43dZt84RSpytNlCg4=; b=Y7SKGGanYydfYl
	07DgxOaBFaYbmLC74h3KRuJWeag+ShcZIn8VXE0rExRZcQC4b+qVvCAmciGEGZZee9lzyDOuqhJM6
	V5C+ZLorvZLYITAF7l9USf1hzGuAD4GnbbnQWm00xaEWYFxHE1CyFM8awL07FmYOyPM9kHEvVyoIs
	U2WO0KIbYy3IiNN4DTdSsvC8p4qC1OOCdJ/s24uV6I3yfK031VFnMS5HSaN3rF//2CjaiXRP+wTff
	Ga9Jk4MjByDrtHvV94lhDo4D1gC78kUgck5nPrJndyoexJpRrB2E8YrqlkKQldLXTUifoIL3rA0QF
	lleJpKB2fjP8Gr4H4GOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwRG-0006hj-T6; Tue, 21 Jan 2020 16:31:38 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwR9-0006dp-SF
 for kexec@lists.infradead.org; Tue, 21 Jan 2020 16:31:37 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1itwQq-00024m-HU; Tue, 21 Jan 2020 09:31:12 -0700
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1itwQl-0001Fp-NK; Tue, 21 Jan 2020 09:31:12 -0700
From: ebiederm@xmission.com (Eric W. Biederman)
To: Jean Delvare <jdelvare@suse.de>
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com>
 <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org>
 <20200120224204.4e5cc0df@endymion>
 <CAHp75Veb02m3tU9tzZe912ZmX5mdaYkZ90DD67FVERJS15VsXw@mail.gmail.com>
 <20200121100359.6125498c@endymion>
Date: Tue, 21 Jan 2020 10:29:35 -0600
In-Reply-To: <20200121100359.6125498c@endymion> (Jean Delvare's message of
 "Tue, 21 Jan 2020 10:03:59 +0100")
Message-ID: <87zheg93io.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1itwQl-0001Fp-NK; ; ; mid=<87zheg93io.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19A1vHjXVSUHLJX23KSD0vshxuGi0OSXWU=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=8.0 tests=ALL_TRUSTED,BAYES_40,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
 *      [score: 0.3872] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Jean Delvare <jdelvare@suse.de>
X-Spam-Relay-Country: 
X-Spam-Timing: total 4361 ms - load_scoreonly_sql: 0.88 (0.0%),
 signal_user_changed: 7 (0.2%), b_tie_ro: 3.7 (0.1%), parse: 2.7 (0.1%),
 extract_message_metadata: 22 (0.5%), get_uri_detail_list: 1.98 (0.0%),
 tests_pri_-1000: 28 (0.6%), tests_pri_-950: 2.8 (0.1%),
 tests_pri_-900: 1.91 (0.0%), tests_pri_-90: 34 (0.8%), check_bayes: 32
 (0.7%), b_tokenize: 7 (0.2%), b_tok_get_all: 7 (0.2%), b_comp_prob:
 2.2 (0.1%), b_tok_touch_all: 12 (0.3%), b_finish: 0.80 (0.0%),
 tests_pri_0: 586 (13.4%), check_dkim_signature: 1.69 (0.0%),
 check_dkim_adsp: 2.9 (0.1%), poll_dns_idle: 3635 (83.4%),
 tests_pri_10: 2.3 (0.1%), tests_pri_500: 3667 (84.1%), rewrite_mail:
 0.00 (0.0%)
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_083131_916976_CED44241 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Matt Fleming <matt@codeblueprint.co.uk>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Jean Delvare <jdelvare@suse.de> writes:

> On Mon, 20 Jan 2020 23:55:43 +0200, Andy Shevchenko wrote:
>> On Mon, Jan 20, 2020 at 11:44 PM Jean Delvare <jdelvare@suse.de> wrote:
>> >
>> > On Mon, 20 Jan 2020 10:04:04 -0600, Eric W. Biederman wrote:  
>> > > Second.  I looked at your test results and they don't directly make
>> > > sense.  dmidecode bypasses the kernel completely or it did last time
>> > > I looked so I don't know why you would be using that to test if
>> > > something in the kernel is working.  
>> >
>> > That must have been long ago. A recent version of dmidecode (>= 3.0)
>> > running on a recent kernel  
>> > (>= d7f96f97c4031fa4ffdb7801f9aae23e96170a6f, v4.2) will read the DMI  
>> > data from /sys/firmware/dmi/tables, so it is very much relying on the
>> > kernel doing the right thing. If not, it will still try to fallback to
>> > reading from /dev/mem directly on certain architectures. You can force
>> > that old method with --no-sysfs.
>> >
>> > Hope that helps,  
>> 
>> I don't understand how it possible can help for in-kernel code, like
>> DMI quirks in a drivers.
>
> OK, just ignore me then, probably I misunderstood the point made by
> Eric.

No.  I just haven't dived into this area of code in a long time.

It seems a little indirect to use dmidecode as the test to see if the
kernel has the pointer to the dmitables, but with the knowledge you
provided it seems like a perfectly valid test.

Eric


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
