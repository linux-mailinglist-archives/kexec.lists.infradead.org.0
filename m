Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561FDE4223
	for <lists+kexec@lfdr.de>; Fri, 25 Oct 2019 05:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lb65ymgCmaUWykjH8zqUpYOMZJZNTjQ3OPnuRlbGw9I=; b=lz5BXEFcXAXBom
	VStIqf6o3Cki7biwaZWX0rdnz1OjrvekydMzaFm5Hjl+am0GjVQzdgUBDtxHBNApzSPkDQ1RGhYDU
	/D2e71u+0zXatWlE2uBV7RiiaHmEf2r5/meEqMmFhoIs7xC18uW7fkuByPv1kw99wPqrpcYuZeG31
	ap9MvkO5m2qtK2mVuS3zHSLsJtiWKuWjCmvJtRKPlVdoqxHNbsdoxMlZ2QlGiOOG0pgBr3QN6yNj4
	nE49oosCiSd1vLL5hR6wv0DMhFiFkz7Afov4oC0bBWkax2hgjnDynM1QsRuP64AIKTcx437jHVGi4
	zc6oHvgOTkNbNSJ/esNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqTo-0002Cs-MP; Fri, 25 Oct 2019 03:41:36 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqTl-00029C-9t
 for kexec@lists.infradead.org; Fri, 25 Oct 2019 03:41:34 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iNqTK-0000Sf-29; Thu, 24 Oct 2019 21:41:06 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iNqTI-0008Bt-5E; Thu, 24 Oct 2019 21:41:05 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: lijiang <lijiang@redhat.com>
References: <20191023141912.29110-1-lijiang@redhat.com>
 <20191023141912.29110-2-lijiang@redhat.com>
 <20191024100719.GC11441@verge.net.au>
 <4c1c4b78-23f0-a2b9-4be7-5bab0335f10a@redhat.com>
 <6da13645-c5e9-6c95-1f2d-bede177f9863@redhat.com>
 <OSBPR01MB40062E08DFAEDA628FDC945895650@OSBPR01MB4006.jpnprd01.prod.outlook.com>
 <2020bbf9-67b2-52e8-756f-b595414b4c02@redhat.com>
Date: Thu, 24 Oct 2019 22:39:59 -0500
In-Reply-To: <2020bbf9-67b2-52e8-756f-b595414b4c02@redhat.com> (lijiang's
 message of "Fri, 25 Oct 2019 11:14:43 +0800")
Message-ID: <875zkdtrw0.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iNqTI-0008Bt-5E; ; ; mid=<875zkdtrw0.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1++EmeJ2BIKf+/UnCiscXCiWx8rDM8yULM=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa08.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_XMDrugObfuBody_14,
 XMNoVowels,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4991] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa08 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.2 T_XMDrugObfuBody_14 obfuscated drug references
X-Spam-DCC: XMission; sa08 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;lijiang <lijiang@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1454 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 3.5 (0.2%), b_tie_ro: 2.5 (0.2%), parse: 0.70
 (0.0%), extract_message_metadata: 2.4 (0.2%), get_uri_detail_list:
 0.68 (0.0%), tests_pri_-1000: 4.2 (0.3%), tests_pri_-950: 1.43 (0.1%),
 tests_pri_-900: 1.31 (0.1%), tests_pri_-90: 22 (1.5%), check_bayes: 20
 (1.4%), b_tokenize: 6 (0.4%), b_tok_get_all: 6 (0.4%), b_comp_prob:
 1.95 (0.1%), b_tok_touch_all: 3.0 (0.2%), b_finish: 0.86 (0.1%),
 tests_pri_0: 1401 (96.4%), check_dkim_signature: 0.49 (0.0%),
 check_dkim_adsp: 2.7 (0.2%), poll_dns_idle: 0.98 (0.1%), tests_pri_10:
 2.8 (0.2%), tests_pri_500: 7 (0.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/2 v5] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_204133_373247_9AB0D2E5 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "bhe@redhat.com" <bhe@redhat.com>, "dyoung@redhat.com" <dyoung@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>, Simon Horman <horms@verge.net.au>,
 "bp@alien8.de" <bp@alien8.de>, "hpa@zytor.com" <hpa@zytor.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

lijiang <lijiang@redhat.com> writes:

>  * Returns the length of the argument (regardless of if it was
>  * truncated to fit in the buffer), or -1 on not found.
>  */
> static int
> __cmdline_find_option(const char *cmdline, int max_cmdline_size,
>                       const char *option, char *buffer, int bufsize)
>
>
> According to the above code comment, it should be better like this:
>
> +       if (cmdline_find_option(boot_command_line, "crashkernel",
> +                               NULL, 0) > 0) {
>
> After i test, i will post again.
>

This seems reasonable as we are dealing with x86 only code.

It wound be nice if someone could generalize cmdline_find_option to be
arch independent so that crash_core.c:parse_crashkernel could use it.
I don't think for this patchset, but it looks like an overdue cleanup.

We run the risk with parse_crashkernel using strstr and this using
another algorithm of having different kernel command line parsers
giving different results and disagreeing if "crashkernel=" is present
or not on the kernel command line.

Eric



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
