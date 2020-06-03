Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A241ECD52
	for <lists+kexec@lfdr.de>; Wed,  3 Jun 2020 12:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGm7z3hUZhkL20Q4VgjhTmJmI4VtwVGzmXGAUKRIw3g=; b=DtOP317X8njsTE
	3Cr7s5V3PFDC+6bJYzAz7UigRBdVicDZUiuy/DPQnTAqKfuHq6rPY9lCVlurmYVlfv2VLqHnZVdFq
	d1pwQ0bgCo/Py8gXREusJWO2BFPmcrhkgl6dwOj8JgKeC0oVhc/H9fG21XTzL8C5tShrR1gBUluOV
	poo+GBjALb2Mf9wP/7lLi9isarLK+RHgiyFO/81e9VUJit97rV7Qn0a7z/Cnqi+Zc53cOdySLGfjJ
	7ZzvuYJu2wwFvCvPIUVx+VZn3q1OT4XcLZ2TgyVyV6NhZy2phoksjuC+X3rLxLK3/9QIqX25006dw
	cH+UrQ2P1plMtb623sKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQRq-0007Iu-EB; Wed, 03 Jun 2020 10:16:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQRm-0007Hx-OX
 for kexec@lists.infradead.org; Wed, 03 Jun 2020 10:16:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 732DCAC2C;
 Wed,  3 Jun 2020 10:16:33 +0000 (UTC)
Date: Wed, 3 Jun 2020 12:16:28 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH v2 1/3] crash: add VMCOREINFO macro for anonymous structs
Message-ID: <20200603101627.GE14855@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-2-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501094010.17694-2-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_031634_943377_36590F4A 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri 2020-05-01 11:46:08, John Ogness wrote:
> Some structs are not named and are only available via their typedef.
> Add a VMCOREINFO macro to export field offsets for such structs.

Honestly, I did not get the meaning until I looked at the sample
usage added by the 2nd patch.

The term "anonymous structures" has another meaning in C++. It is
used for structures without any name that are defined inside a named
structure.

Something like this might be better:

"crash: Add VMCOREINFO macro to define offset in a struct declared by typedef

 The existing macro VMCOREINFO_OFFSET() can't be used for structures
 declared via typedef because "struct" is not part of type definition.

 Create another macro for this purpose."


Anyway, thanks a lot for the prototype of crash implementation.
I am happy that it is possible.

Best Regards,
Petr

PS: It might take few more days until I send some feedback for the
other patches. They are a bit more complex ;-)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
