Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0725206B
	for <lists+kexec@lfdr.de>; Tue, 25 Jun 2019 03:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rp3GbkIylF8ocmI4T6ja0tdhHDop6Tv9py03wv2LnCE=; b=d5ZXyIZcndkl5f
	5oRtjmBTKGz0CwIiiSM7Yn36eLr/31ALCf8H/lSMFAdXTfUZu8Cok4nkpQbKcMxpiUtAqDhjp12Ul
	7QYuhonQtGIQcRVjpKx2DCki3aby9MHpJONDfOn0pFz+AqFuIQm6kaZitg/6LoekrphQHEaFafkw5
	ZDbmCgVp8/J0jdRdTrskNuIXZv09fyF1FwGLvng6ByRGoM++tzNfYs/rGJK9hQkQNfsqZHLuEGIg6
	o3iu/2ARxR1IiscoSyLn1Rn1GRLNDU1n+D1mqFroRb//4bPKkqjInULGheZCi9cBC6e8nybiUJ75a
	w98YQKTfMV/navVRmVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfaXT-0005XV-EN; Tue, 25 Jun 2019 01:46:27 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfaXP-0005Qy-QS
 for kexec@lists.infradead.org; Tue, 25 Jun 2019 01:46:25 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5P1fn1c059674
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 21:46:22 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tb66urm5u-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 21:46:22 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <zohar@linux.ibm.com>;
 Tue, 25 Jun 2019 02:46:20 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 25 Jun 2019 02:46:16 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5P1kFOe60752006
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 01:46:15 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B32D8A4062;
 Tue, 25 Jun 2019 01:46:15 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6F738A405B;
 Tue, 25 Jun 2019 01:46:14 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.80.110.18])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 25 Jun 2019 01:46:14 +0000 (GMT)
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
From: Mimi Zohar <zohar@linux.ibm.com>
To: Matthew Garrett <mjg59@google.com>
Date: Mon, 24 Jun 2019 21:46:03 -0400
In-Reply-To: <CACdnJuvE-MbD42AJTrio=0RaN8SaWo-RHHt21z=3an1vtjTFhA@mail.gmail.com>
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
 <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
 <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
 <1561411657.4340.70.camel@linux.ibm.com>
 <CACdnJuvE-MbD42AJTrio=0RaN8SaWo-RHHt21z=3an1vtjTFhA@mail.gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19062501-0020-0000-0000-0000034D0FB6
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062501-0021-0000-0000-000021A07C50
Message-Id: <1561427163.4340.98.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-25_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906250011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_184623_995989_0AC8FC86 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 17:02 -0700, Matthew Garrett wrote:
> On Mon, Jun 24, 2019 at 2:27 PM Mimi Zohar <zohar@linux.ibm.com> wrote:
> 
> > I agree with Dave.  There should be a stub lockdown function to
> > prevent enforcing lockdown when it isn't enabled.
> 
> Sorry, when what isn't enabled? If no LSMs are enforcing lockdown then
> the check will return 0. The goal here is for distributions to be able
> to ship a kernel that has CONFIG_KEXEC_SIG=y, CONFIG_KEXEC_SIG_FORCE=n
> and at runtime be able to enforce a policy that requires signatures on
> kexec payloads.

Never mind, the call can't be moved earlier.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
