Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAAF1AB29C
	for <lists+kexec@lfdr.de>; Wed, 15 Apr 2020 22:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76yYJjzRYsszdQ+bEza7y5kwwzUdDF7DBxv5wipVlPk=; b=cSJ0DF4+wtlBFH
	d99LxmclrK6uXN2t1TEbNT+JYxKLfQ8qNf5nW2umFiU95Hf2QCCNl73bRnuNAOux8F9vTqvUF0upp
	srQFE74f6t6o7ZnTJfYyvsVOYGALj+iKEb/bJj1jer/LzQJC0Hv/uLeJkACBcr889n0hbDigg8iN8
	ftn51w+NXCcul+JeQ2IYllIxx7MrmZi1RzrzwBFbcLqEbfD1WHDo5z2DUE8/GDRt7HJilO7Q7aEBw
	L9gt1CBO+iiT/Os6yAh9d0oBrtIg+EyzhxzmdXEIvURK19Sc/LoYn54RUY3vdtWMAfe0gFu2HxDZn
	qEsoglPVkGUq24XmqzXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOopw-0003ki-Pa; Wed, 15 Apr 2020 20:40:44 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOopm-0003dM-8M; Wed, 15 Apr 2020 20:40:35 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOopk-0004Y6-1W; Wed, 15 Apr 2020 14:40:32 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOopj-00044t-6u; Wed, 15 Apr 2020 14:40:31 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-4-james.morse@arm.com>
Date: Wed, 15 Apr 2020 15:37:32 -0500
In-Reply-To: <20200326180730.4754-4-james.morse@arm.com> (James Morse's
 message of "Thu, 26 Mar 2020 18:07:30 +0000")
Message-ID: <87v9m0fptf.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jOopj-00044t-6u; ; ; mid=<87v9m0fptf.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+JJqbotLvSUq0NShDOKTNwYRyLEmWn4Co=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=8.0 tests=ALL_TRUSTED,BAYES_40,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
 *      [score: 0.3110] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 455 ms - load_scoreonly_sql: 0.24 (0.1%),
 signal_user_changed: 10 (2.2%), b_tie_ro: 8 (1.7%), parse: 0.97 (0.2%),
 extract_message_metadata: 12 (2.6%), get_uri_detail_list: 0.72 (0.2%),
 tests_pri_-1000: 11 (2.4%), tests_pri_-950: 1.51 (0.3%),
 tests_pri_-900: 1.25 (0.3%), tests_pri_-90: 271 (59.5%), check_bayes:
 269 (59.1%), b_tokenize: 5.0 (1.1%), b_tok_get_all: 3.8 (0.8%),
 b_comp_prob: 1.69 (0.4%), b_tok_touch_all: 53 (11.7%), b_finish: 1.10
 (0.2%), tests_pri_0: 134 (29.4%), check_dkim_signature: 0.89 (0.2%),
 check_dkim_adsp: 2.4 (0.5%), poll_dns_idle: 0.61 (0.1%), tests_pri_10:
 2.1 (0.5%), tests_pri_500: 8 (1.7%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3] arm64: memory: Give hotplug memory a different
 resource name
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_134034_296024_EA78A007 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

James Morse <james.morse@arm.com> writes:

> If kexec chooses to place the kernel in a memory region that was
> added after boot, we fail to boot as the kernel is running from a
> location that is not described as memory by the UEFI memory map or
> the original DT.
>
> To prevent unaware user-space kexec from doing this accidentally,
> give these regions a different name.

Please fix the problem and don't hack around it.

Eric

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
