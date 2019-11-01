Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921A9EBBC9
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 02:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zx0ML/3thyKxs4DhWoY6sjs8Xpk4N0PuA3mylvC8H+A=; b=Un2VHp+YHippeU
	RzwROTwHYNABKY/Wnp8BZL12G7wfF+yZpWZiHQ5qu4w56Drp+ped7R3v2O09C3VXvR8d5IQgLzO9u
	IS3mNVrEM03uNmaxRw8v9X+4qr0NO/9Ky6iGWtrylVpF1rznTh9Xd1QlqH0Py/80M7ot4oRz7yaAJ
	8+oaE8rQepJmY6Bu+JkPXErbjb8yFskgWPxNJACHLOP8DxsJK4y5VIrLb9cfYPoZZaC+XstezPWk9
	TFNsq1WqcBDEzIHKQy5WrcJfSe+RqDBUjeM/4H5ue+J5/bw3yHrcfCRg7XWGjd09FcTI/L3c8+ZDb
	IzsiRz0Hb3+EImj6H0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQM3V-00031q-97; Fri, 01 Nov 2019 01:48:49 +0000
Received: from one.firstfloor.org ([193.170.194.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQM3S-00030W-Im
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 01:48:48 +0000
Received: by one.firstfloor.org (Postfix, from userid 503)
 id E82FA8675A; Fri,  1 Nov 2019 02:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=firstfloor.org;
 s=mail; t=1572572917;
 bh=ROQL9Qh1bjB7eXBzyzI04WcKmSnwBZdtXkU8/nmiqxw=;
 h=Date:From:To:Cc:Subject:From;
 b=kB8Dgjq0ZDohAX1Tu/UqtUIJQNUQVZ+vJBpqRCcPDiCoH8DsUd5X/ckGy84Nuz5Ie
 kkb5Faf2C+zSWD/FlIQP4Clf81bXL1ue6cG/dGnLLWAorcxiEbprYCfJSKY3PCBi4N
 m5NJWiWOEd3ydKPSJ9K7LE7XlPi4CPOAGbXzS2Sk=
Date: Thu, 31 Oct 2019 18:48:37 -0700
From: Andi Kleen <andi@firstfloor.org>
To: crash-utility@redhat.com
Subject: crash and makedumpfile with 5.3 missing memory in dump
Message-ID: <20191101014837.lxmqee5jyic7lk4d@two.firstfloor.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_184846_844566_F1AA0C34 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.170.194.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: k-hagio@ab.jp.nec.com, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

[I'm not sure if that is a crash or mkdumpfile problem]

I'm trying to use crash to read a makedumpfile vmcore from 5.3, but I always end up with an error when opening the dump. 

I'm using the latest github crash 

crash 7.2.7++
...
 crash: page excluded: kernel virtual address: ffffffff82110370  type:
 "possible"
 WARNING: cannot read cpu_possible_map
 crash: page excluded: kernel virtual address: ffffffff82110360  type:
 "present"
 WARNING: cannot read cpu_present_map
 crash: page excluded: kernel virtual address: ffffffff82110368  type:
 "online"
 WARNING: cannot read cpu_online_map
 crash: page excluded: kernel virtual address: ffffffff82110358  type:
 "active"
 WARNING: cannot read cpu_active_map
 crash: page excluded: kernel virtual address: ffffffff82011544  type:
 "init_uts_ns"
 crash: page excluded: kernel virtual address: ffffffff82110360  type:
 "cpu_present_map"
 crash: page excluded: kernel virtual address: ffffffff82110360  type:
 "cpu_present_map"
 WARNING: ORC unwinder: cannot read lookup_num_blocks
 crash: seek error: kernel virtual address: ffff88822dffb000  type:
 "memory section root table"

The dump is created with the latest makedumpfile release

makedumpfile: version 1.6.6 (released on 27 Jun 2019)

It complains that it doesn't support the kernel 

Any ideas? 

-Andi


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
