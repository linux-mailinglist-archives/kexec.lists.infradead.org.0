Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C0444D02
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 22:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qONfKr6b6qLm5X2qCmnpD/dDmD9K8jrYCMhTAnxNl60=; b=RjFGbXDxNBqUtG
	CNTaZoTDY4k06r9Tq5V0zkYNMygudC7CzzHwp2zyRb/TnqsKAKQ1m7EixHBMbpQhVx8sTt85xr5Eo
	n3mofol3NvZB23N5uanX0QN9SICL9i2yS+eM+ZBgCqQsmzKpu394q7fMW6J+zB2FeBj4YD2Lp0IJY
	LClJTuQ63gkuGCih6WkfLIGQMkffA7RAtaYisOd1tff7R13uIH5KaNoAQEW2vNzKYE8ex3QDo3UYW
	14a9M4CqZ6OHa9gNzU9RdDTj6ucwRUJj6XXQjmP9X2OWgSYDKh+lk/ciietb/VTe7omjZVJRE5fRO
	yaP9HcjCoJJVQFYd5ELQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbW0t-0000Se-IS; Thu, 13 Jun 2019 20:07:59 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbW0p-0000S1-SW
 for kexec@lists.infradead.org; Thu, 13 Jun 2019 20:07:57 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DK1bkd002513
 for <kexec@lists.infradead.org>; Thu, 13 Jun 2019 16:07:54 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t3v7tjk8x-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Thu, 13 Jun 2019 16:07:54 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <zohar@linux.ibm.com>;
 Thu, 13 Jun 2019 21:07:52 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 13 Jun 2019 21:07:48 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5DK7lEX47513814
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 20:07:48 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D1CC552057;
 Thu, 13 Jun 2019 20:07:47 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.80.81.91])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id B673A5204F;
 Thu, 13 Jun 2019 20:07:46 +0000 (GMT)
Subject: Re: [PATCH V8 3/3] Call ima_kexec_cmdline to measure the cmdline args
From: Mimi Zohar <zohar@linux.ibm.com>
To: Dave Young <dyoung@redhat.com>
Date: Thu, 13 Jun 2019 16:07:36 -0400
In-Reply-To: <20190613082627.GA30288@dhcp-128-65.nay.redhat.com>
References: <20190612221549.28399-1-prsriva02@gmail.com>
 <20190612221549.28399-4-prsriva02@gmail.com>
 <1560378703.4578.91.camel@linux.ibm.com>
 <20190613082627.GA30288@dhcp-128-65.nay.redhat.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19061320-0020-0000-0000-00000349E67B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061320-0021-0000-0000-0000219D1F3E
Message-Id: <1560456456.4805.61.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906130150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_130756_033699_11E80CE2 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: kexec <kexec@lists.infradead.org>, Prakhar Srivastava <prsriva02@gmail.com>,
 roberto.sassu@huawei.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, "Eric W.
 Biederman" <ebiederm@xmission.com>, linux-integrity@vger.kernel.org,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, 2019-06-13 at 16:26 +0800, Dave Young wrote:
> On 06/12/19 at 06:31pm, Mimi Zohar wrote:
> > [Cc: kexec mailing list]
> > 
> > Hi Eric, Dave,
> > 
> > On Wed, 2019-06-12 at 15:15 -0700, Prakhar Srivastava wrote:
> > > During soft reboot(kexec_file_load) boot cmdline args
> > > are not measured.Thus the new kernel on load boots with
> > > an assumption of cold reboot.
> > > 
> > > This patch makes a call to the ima hook ima_kexec_cmdline,
> > > added in "Define a new IMA hook to measure the boot command
> > > line arguments"
> > > to measure the boot cmdline args into the ima log.
> > > 
> > > - call ima_kexec_cmdline from kexec_file_load.
> > > - move the call ima_add_kexec_buffer after the cmdline
> > > args have been measured.
> > > 
> > > Signed-off-by: Prakhar Srivastava <prsriva02@gmail.com>
> > Cc: Eric W. Biederman <ebiederm@xmission.com>
> > Cc: Dave Young <dyoung@redhat.com>
> > 
> > Any chance we could get some Acks?
> 
> The ima_* is blackbox functions to me, looks like this patch is trying
> to measure kexec cmdline buffer and save in some ima logs and then add all the
> measure results including those for kernel/initrd to a kexec_buf and pass to 2nd

Right, including the new boot command line measurement.

> kernel.
> 
> It should be good and only take effect when IMA enabled. If all the
> assumptions are right:
> 
> Acked-by: Dave Young <dyoung@redhat.com>

Thanks, Dave.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
